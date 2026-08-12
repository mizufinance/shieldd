from __future__ import annotations

import importlib.util
import os
import re
import subprocess
import sys
import unittest
from pathlib import Path


SCRIPT = Path(__file__).with_name("run_with_annotation.py")
SPEC = importlib.util.spec_from_file_location("run_with_annotation", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
WRAPPER = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = WRAPPER
SPEC.loader.exec_module(WRAPPER)


class RunWithAnnotationTests(unittest.TestCase):
    def invoke(
        self, source: str, title: str = "Test failure"
    ) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [
                sys.executable,
                str(SCRIPT),
                "--title",
                title,
                "--",
                sys.executable,
                "-c",
                source,
            ],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )

    @staticmethod
    def annotation_line(result: subprocess.CompletedProcess[str]) -> str:
        lines = [
            line for line in result.stdout.splitlines() if line.startswith("::error ")
        ]
        if len(lines) != 1:
            raise AssertionError(f"expected one annotation, got {lines!r}")
        return lines[0]

    def test_success_streams_output_without_annotation(self) -> None:
        result = self.invoke("print('ordinary output')")
        self.assertEqual(result.returncode, 0)
        self.assertIn("ordinary output", result.stdout)
        self.assertNotIn("::error ", result.stdout)

    def test_failure_preserves_unusual_exit_status(self) -> None:
        result = self.invoke("print('fatal: broken'); raise SystemExit(37)")
        self.assertEqual(result.returncode, 37)
        self.assertIn("exit status 37", self.annotation_line(result))

    @unittest.skipIf(os.name == "nt", "POSIX signal return codes are not available")
    def test_signal_status_uses_shell_convention(self) -> None:
        result = self.invoke(
            "import os, signal; os.kill(os.getpid(), signal.SIGTERM)"
        )
        self.assertEqual(result.returncode, 128 + 15)
        self.assertIn("exit status 143", self.annotation_line(result))

    def test_annotation_escapes_workflow_delimiters(self) -> None:
        result = self.invoke("print('fatal: 100%, broken'); raise SystemExit(2)")
        line = self.annotation_line(result)
        self.assertIn("fatal%3A 100%25%2C broken", line)
        self.assertIn("%0A", line)
        self.assertNotIn("\x1b", line)

    def test_annotation_redacts_credentials_and_tokens(self) -> None:
        github_token = "ghp_" + "A1" * 20
        jwt = ".".join(("Abcdefgh1234", "Ijklmnop5678", "Qrstuvwx9012"))
        opaque = "aB3dE5fG7hJ9kL2mN4pQ6rS8tU0vW1xY3zC5"
        result = self.invoke(
            "\n".join(
                [
                    "print('error PASSWORD=hunter2')",
                    "print('Authorization: Bearer bearer-secret')",
                    "print('error https://person:password@example.test/path')",
                    f"print('error {github_token}')",
                    f"print('error {jwt}')",
                    f"print('error {opaque}')",
                    "raise SystemExit(1)",
                ]
            )
        )
        line = self.annotation_line(result)
        for secret in (
            "hunter2",
            "bearer-secret",
            "person",
            "password@example",
            github_token,
            jwt,
            opaque,
        ):
            self.assertNotIn(secret, line)
        self.assertIn("[REDACTED]", line)

    def test_annotation_is_bounded_and_keeps_latest_context(self) -> None:
        result = self.invoke(
            "print('\\n'.join(f'error line {i}: ' + 'x' * 200 for i in range(2000))); "
            "print('fatal: final marker'); raise SystemExit(9)"
        )
        line = self.annotation_line(result)
        self.assertLessEqual(
            len((line + "\n").encode("utf-8")), WRAPPER.MAX_ANNOTATION_BYTES
        )
        self.assertIn("final marker", line)
        self.assertIn("truncated", line)

    def test_diagnostic_keeps_nested_command_context(self) -> None:
        diagnostic = WRAPPER.select_diagnostic(
            "\n".join(
                [
                    "command failed (2)",
                    "command: cargo hax into aeneas-lean --lakefile",
                    "cwd: /workspace/ark-ip-proofs",
                    *(f"ordinary line {index}" for index in range(20)),
                    "fatal: extraction failed",
                ]
            ),
            2,
        )
        self.assertIn("command: cargo hax into aeneas-lean --lakefile", diagnostic)
        self.assertIn("cwd: /workspace/ark-ip-proofs", diagnostic)

    def test_missing_executable_returns_127_without_leaking_argv(self) -> None:
        missing = "definitely-missing-secret-command-483921"
        result = subprocess.run(
            [
                sys.executable,
                str(SCRIPT),
                "--title",
                "Launch",
                "--",
                missing,
            ],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )
        self.assertEqual(result.returncode, 127)
        line = self.annotation_line(result)
        self.assertIn("launch failed", line)
        self.assertNotIn(missing, line)

    def test_empty_failure_has_a_useful_annotation(self) -> None:
        result = self.invoke("raise SystemExit(1)")
        self.assertEqual(result.returncode, 1)
        self.assertIn("produced no output", self.annotation_line(result))

    def test_tail_buffer_never_exceeds_its_limit(self) -> None:
        tail = WRAPPER.ByteTail(limit=8)
        tail.append(b"abcdef")
        tail.append(b"ghijkl")
        self.assertEqual(bytes(tail.data), b"efghijkl")


class FormalWorkflowWiringTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.workflow = (
            SCRIPT.parents[2] / ".github/workflows/formal.yml"
        ).read_text(encoding="utf-8")

    def test_opaque_snarkpack_lanes_use_wrapper(self) -> None:
        for title in (
            "SnarkPack static FV",
            "SnarkPack F*",
            "SnarkPack parity",
            "SnarkPack production Rust suite",
            "SnarkPack independent reference suite",
            "SnarkPack fuzz",
            "SnarkPack DoS",
        ):
            self.assertIn(f'--title "{title}"', self.workflow)
        self.assertIn(
            '--title "SnarkPack affected extraction graphs"',
            self.workflow,
        )
        self.assertIn(
            '--title "SnarkPack slow interoperability suite"',
            self.workflow,
        )

    def test_formal_checkouts_do_not_hydrate_lfs(self) -> None:
        host_job = self.workflow.split(
            "  snarkpack-host:", maxsplit=1
        )[1].split("\n  snarkpack-extract:", maxsplit=1)[0]
        checkout = host_job.split(
            "- uses: actions/checkout@", maxsplit=1
        )[1].split("- uses: ./.github/actions/setup-nix-rust", maxsplit=1)[0]
        self.assertNotIn("lfs:", checkout)

    def test_extraction_has_no_ci_recovery_fanout(self) -> None:
        self.assertNotIn("matrix.graph", self.workflow)
        self.assertNotIn("snarkpack-extraction-recovery:", self.workflow)
        self.assertNotIn("extraction_recovery", self.workflow)
        self.assertIn(
            "Generate exact extraction refresh artifacts", self.workflow
        )
        self.assertIn(
            'python3 "$script" regenerate',
            self.workflow,
        )
        self.assertIn('--graph "$graph"', self.workflow)
        self.assertIn('--artifact "$artifact_root/$graph"', self.workflow)
        self.assertIn('python3 "$script" import-recovery', self.workflow)
        self.assertIn("--maximal-compatible", self.workflow)
        self.assertIn('git diff --binary -- . > "$patch"', self.workflow)
        self.assertIn("git apply --index refresh.patch", self.workflow)
        self.assertIn(
            "snarkpack-extraction-refresh-${{ needs.applicability.outputs."
            "candidate_sha }}-${{ github.run_attempt }}",
            self.workflow,
        )

    def test_formal_caches_are_aggregate_and_lean_is_committed(self) -> None:
        self.assertIn("snarkpack-extract-v5-", self.workflow)
        self.assertIn("snarkpack-extract-pass-v2-", self.workflow)
        self.assertIn("snarkpack-runtime-pass-v2-", self.workflow)
        applicability = self.workflow.split("  snarkpack-host:", maxsplit=1)[0]
        self.assertIn("Look up exact parity success", applicability)
        self.assertIn("Look up exact extraction success", applicability)
        self.assertIn("Look up exact runtime success", applicability)
        self.assertIn("Look up exact F* success", applicability)
        self.assertNotIn("-progress-${{ github.run_id }}-", self.workflow)
        self.assertNotIn("lean-ipp-v", self.workflow)
        self.assertNotIn("snarkpack-extraction-pass-v1-", self.workflow)
        self.assertIn(
            "steps.extraction_compare.outcome == 'success'",
            self.workflow,
        )
        self.assertIn("Validate the locally generated Lean cache", self.workflow)

    def test_workflow_does_not_mask_diagnostic_failures(self) -> None:
        lines = self.workflow.splitlines()
        for index, line in enumerate(lines):
            if "continue-on-error: true" not in line:
                continue
            nearby = "\n".join(lines[index : index + 4])
            self.assertIn("uses: actions/cache/save@", nearby)

    def test_diagnostic_controls_are_in_the_snarkpack_static_inventory(self) -> None:
        root = SCRIPT.parents[2]
        gate = (
            root / "ci/gates/snarkpack-formal.json"
        ).read_text(encoding="utf-8")
        static_tests = (
            "scripts/ci/test_run_with_annotation.py",
            "scripts/ci/test_snarkpack_lane_fingerprint.py",
            "scripts/ci/test_snarkpack_lean_attestation.py",
        )
        self.assertIn("scripts/ci/run_with_annotation.py", gate)
        runner = (
            root / "scripts/snarkpack-fv.sh"
        ).read_text(encoding="utf-8")
        for static_test in static_tests:
            self.assertIn(static_test, gate)
            self.assertIn(f'python3 "$ROOT/{static_test}"', runner)


class RustWorkflowWiringTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.workflow = (
            SCRIPT.parents[2] / ".github/workflows/rust.yml"
        ).read_text(encoding="utf-8")

    def test_opaque_rust_lanes_publish_bounded_diagnostics(self) -> None:
        for title in (
            "Rust cargo check",
            "Rust crate feature checks",
            "Rust wasm compatibility",
            "Rust nextest",
        ):
            with self.subTest(title=title):
                self.assertIn(
                    "python3 scripts/ci/run_with_annotation.py",
                    self.workflow,
                )
                self.assertIn(f'--title "{title}"', self.workflow)

    def test_runner_policy_accelerates_only_critical_rust_lanes(self) -> None:
        jobs = dict(
            re.findall(
                r"(?ms)^  ([a-z0-9-]+):\n"
                r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                self.workflow,
            )
        )
        self.assertEqual(
            set(jobs), {"proof-artifacts", "checks", "tests", "summary"}
        )
        self.assertIn("github.event_name != 'pull_request'", jobs["tests"])
        self.assertIn("just ci-gnark-proof-tests", jobs["tests"])
        for lane in ("checks", "tests"):
            with self.subTest(blacksmith_lane=lane):
                self.assertIn(
                    "github.event_name == 'pull_request'",
                    jobs[lane],
                )
                self.assertIn(
                    "github.event_name == 'merge_group'",
                    jobs[lane],
                )
                self.assertIn(
                    "'blacksmith-8vcpu-ubuntu-2404'",
                    jobs[lane],
                )
                self.assertIn(
                    "|| 'ubuntu-24.04'",
                    jobs[lane],
                )

    def test_exact_fv_evidence_builds_jemalloc_with_optimization(self) -> None:
        exact_fv_step = self.workflow.split(
            "- name: Execute exact FV specification evidence", maxsplit=1
        )[1].split("\n\n", maxsplit=1)[0]
        self.assertIn("env:\n          CFLAGS: -O1", exact_fv_step)

    def test_exact_fv_evidence_preflights_extractor_goldens(self) -> None:
        evidence_gate = (
            SCRIPT.parents[2] / "scripts/check-fv-specification-evidence.sh"
        ).read_text(encoding="utf-8")
        preflight = (
            'go -C "$ROOT/tools/gnark/third_party/gnark-lean-extractor" '
            "test ./..."
        )
        self.assertLess(
            evidence_gate.index(preflight),
            evidence_gate.index("run-fv-specification-tests.py"),
        )


class OrbisWorkflowWiringTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.workflow = (
            SCRIPT.parents[2] / ".github/workflows/orbis-integration.yml"
        ).read_text(encoding="utf-8")

    def test_integration_flow_publishes_bounded_diagnostics(self) -> None:
        self.assertIn(
            "python3 scripts/ci/run_with_annotation.py", self.workflow
        )
        self.assertIn(
            '--title "Shieldd Orbis integration flow"', self.workflow
        )

    def test_insecure_v0_pre_is_an_explained_skip(self) -> None:
        self.assertIn("name: Explain disabled Orbis v0 PRE", self.workflow)
        self.assertIn('echo "status=skip"', self.workflow)
        self.assertIn('echo "tier=skip"', self.workflow)
        self.assertIn('echo "run=false"', self.workflow)
        self.assertIn(
            "Orbis v0 transfer PRE is disabled until a non-disclosing protocol is available.",
            self.workflow,
        )

    def test_orbis_is_one_conclusive_ui_job(self) -> None:
        jobs = dict(
            re.findall(
                r"(?ms)^  ([a-z0-9-]+):\n"
                r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                self.workflow,
            )
        )
        self.assertEqual(set(jobs), {"summary"})
        self.assertIn("name: Orbis Integration Summary", jobs["summary"])


class GeneralRunnerPolicyWiringTests(unittest.TestCase):
    def test_nonformal_candidate_compute_lanes_have_explicit_caps(self) -> None:
        root = SCRIPT.parents[2]
        docs = (root / ".github/workflows/docs-lint.yml").read_text(
            encoding="utf-8"
        )
        protobuf = (
            root / ".github/workflows/buf-pull-request.yml"
        ).read_text(encoding="utf-8")
        smoke = (root / ".github/workflows/smoke.yml").read_text(
            encoding="utf-8"
        )
        orbis = (
            root / ".github/workflows/orbis-integration.yml"
        ).read_text(encoding="utf-8")

        self.assertIn("timeout-minutes: 25", docs)
        self.assertIn("timeout-minutes: 25", protobuf)
        self.assertIn("&& 90 || 120", smoke)
        self.assertIn("timeout-minutes: 90", orbis)

    def test_container_publication_uses_one_sha_across_architectures(self) -> None:
        root = SCRIPT.parents[2]
        workflow = (root / ".github/workflows/containers.yml").read_text(
            encoding="utf-8"
        )
        self.assertIn("group: containers-${{ github.ref }}", workflow)
        self.assertIn("cancel-in-progress: true", workflow)
        self.assertIn(":sha-${{ github.sha }}-amd64", workflow)
        self.assertIn(":sha-${{ github.sha }}-arm64", workflow)
        self.assertIn("digest: ${{ steps.build.outputs.digest }}", workflow)
        self.assertIn(
            '"$image@${{ needs.build_amd64.outputs.digest }}"', workflow
        )
        self.assertIn(
            '"$image@${{ needs.build_arm64.outputs.digest }}"', workflow
        )
        self.assertIn('--tag "${image}:sha-${GITHUB_SHA}"', workflow)
        self.assertNotIn(":${{ env.IMAGE_TAG }}-amd64", workflow)
        self.assertNotIn(":${{ env.IMAGE_TAG }}-arm64", workflow)

    def test_smoke_uses_one_accelerated_summary_lane(self) -> None:
        root = SCRIPT.parents[2]
        smoke = (root / ".github/workflows/smoke.yml").read_text(
            encoding="utf-8"
        )
        jobs = dict(
            re.findall(
                r"(?ms)^  ([a-z0-9-]+):\n"
                r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                smoke,
            )
        )
        self.assertIn(
            "github.event_name == 'pull_request'",
            jobs["summary"],
        )
        self.assertIn(
            "github.event_name == 'merge_group'",
            jobs["summary"],
        )
        self.assertIn(
            "'blacksmith-16vcpu-ubuntu-2404'",
            jobs["summary"],
        )
        self.assertIn(
            "|| 'ubuntu-24.04'",
            jobs["summary"],
        )
        self.assertEqual(set(jobs), {"summary"})

    def test_noncritical_and_scheduled_lanes_use_github_runners(self) -> None:
        root = SCRIPT.parents[2]
        provers = (
            root / ".github/workflows/soundness-provers.yml"
        ).read_text(encoding="utf-8")
        formal = (root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )

        self.assertNotIn("runs-on: blacksmith-", provers)
        self.assertNotIn("blacksmith-", formal)

    def test_orbis_uses_blacksmith_only_for_merge_candidates(self) -> None:
        workflow = (
            SCRIPT.parents[2] / ".github/workflows/orbis-integration.yml"
        ).read_text(encoding="utf-8")
        self.assertIn("github.event_name == 'pull_request'", workflow)
        self.assertIn("github.event_name == 'merge_group'", workflow)
        self.assertIn(
            "'blacksmith-16vcpu-ubuntu-2404'", workflow
        )
        self.assertIn("|| 'ubuntu-24.04'", workflow)


class SnarkPackReleaseAuditWorkflowWiringTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        root = SCRIPT.parents[2]
        cls.workflow = (
            root / ".github/workflows/snarkpack-release-audit.yml"
        ).read_text(encoding="utf-8")
        cls.runner = (root / "scripts/snarkpack-fv.sh").read_text(
            encoding="utf-8"
        )

    def test_release_audit_is_one_manual_github_hosted_job(self) -> None:
        self.assertIn("workflow_dispatch:", self.workflow)
        self.assertNotIn("schedule:", self.workflow)
        self.assertIn("CANDIDATE_REF: ${{ inputs.target_ref }}", self.workflow)
        self.assertNotIn("pull_request:", self.workflow)
        self.assertNotIn("merge_group:", self.workflow)
        jobs = self.workflow.split("\njobs:\n", maxsplit=1)[1]
        self.assertEqual(
            len(re.findall(r"(?m)^  [a-z0-9-]+:\n", jobs)),
            1,
        )
        self.assertEqual(self.workflow.count("runs-on: ubuntu-24.04"), 1)
        self.assertNotIn("runs-on: blacksmith-", self.workflow)

    def test_release_audit_bypasses_success_caches_and_replays_every_lane(
        self,
    ) -> None:
        for forbidden in (
            "snarkpack-extract-pass-",
            "snarkpack-fstar-pass-",
            "snarkpack-parity-pass-",
            "snarkpack-runtime-pass-",
        ):
            with self.subTest(success_cache=forbidden):
                self.assertNotIn(forbidden, self.workflow)
        for required in (
            "--env SNARKPACK_FV_MODE=release",
            'SNARKPACK_FSTAR_FORCE_ALL: "1"',
            'SNARKPACK_FUZZ_RUNS: "256"',
            "just snarkpack-slow",
            "just snarkpack-fuzz-smoke",
            "just snarkpack-dos-gate",
            "SNARKPACK_FV_MODE: publication",
            "git diff --exit-code -- .",
        ):
            with self.subTest(release_control=required):
                self.assertIn(required, self.workflow)
        self.assertIn("release)", self.runner)
        self.assertIn("reproduce_lean_cache", self.runner)
        self.assertIn("compare-audit", self.runner)

    def test_release_audit_uses_only_dependency_and_compiler_caches(self) -> None:
        self.assertIn("snarkpack-release-lean-deps-v1-", self.workflow)
        self.assertIn("snarkpack-release-aeneas-v1-", self.workflow)
        self.assertNotIn("actions/cache/save@", self.workflow)


if __name__ == "__main__":
    unittest.main()
