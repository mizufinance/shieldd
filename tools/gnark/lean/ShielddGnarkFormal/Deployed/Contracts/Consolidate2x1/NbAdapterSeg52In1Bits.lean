import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1Bits_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    GatesDef.to_binary (rho 105) 128 (seg52In1Bits rho) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p40, p41, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart40 at p40

  rcases p40 with ⟨_, _, _, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩

  unfold Seg52.relationPart41 at p41

  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, r3285, r3286, r3287, r3288, r3289, r3290, r3291, r3292, r3293, r3294, r3295, r3296, r3297, r3298, r3299, r3300, r3301, r3302, r3303, r3304, r3305, r3306, r3307, r3308, r3309, r3310, r3311, r3312, r3313, r3314, r3315, r3316, r3317, r3318, r3319, r3320, r3321, r3322, r3323, r3324, r3325, r3326, r3327, r3328, r3329, r3330, r3331, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow3203 at r3203

  unfold Seg52.relationRow3204 at r3204

  unfold Seg52.relationRow3205 at r3205

  unfold Seg52.relationRow3206 at r3206

  unfold Seg52.relationRow3207 at r3207

  unfold Seg52.relationRow3208 at r3208

  unfold Seg52.relationRow3209 at r3209

  unfold Seg52.relationRow3210 at r3210

  unfold Seg52.relationRow3211 at r3211

  unfold Seg52.relationRow3212 at r3212

  unfold Seg52.relationRow3213 at r3213

  unfold Seg52.relationRow3214 at r3214

  unfold Seg52.relationRow3215 at r3215

  unfold Seg52.relationRow3216 at r3216

  unfold Seg52.relationRow3217 at r3217

  unfold Seg52.relationRow3218 at r3218

  unfold Seg52.relationRow3219 at r3219

  unfold Seg52.relationRow3220 at r3220

  unfold Seg52.relationRow3221 at r3221

  unfold Seg52.relationRow3222 at r3222

  unfold Seg52.relationRow3223 at r3223

  unfold Seg52.relationRow3224 at r3224

  unfold Seg52.relationRow3225 at r3225

  unfold Seg52.relationRow3226 at r3226

  unfold Seg52.relationRow3227 at r3227

  unfold Seg52.relationRow3228 at r3228

  unfold Seg52.relationRow3229 at r3229

  unfold Seg52.relationRow3230 at r3230

  unfold Seg52.relationRow3231 at r3231

  unfold Seg52.relationRow3232 at r3232

  unfold Seg52.relationRow3233 at r3233

  unfold Seg52.relationRow3234 at r3234

  unfold Seg52.relationRow3235 at r3235

  unfold Seg52.relationRow3236 at r3236

  unfold Seg52.relationRow3237 at r3237

  unfold Seg52.relationRow3238 at r3238

  unfold Seg52.relationRow3239 at r3239

  unfold Seg52.relationRow3240 at r3240

  unfold Seg52.relationRow3241 at r3241

  unfold Seg52.relationRow3242 at r3242

  unfold Seg52.relationRow3243 at r3243

  unfold Seg52.relationRow3244 at r3244

  unfold Seg52.relationRow3245 at r3245

  unfold Seg52.relationRow3246 at r3246

  unfold Seg52.relationRow3247 at r3247

  unfold Seg52.relationRow3248 at r3248

  unfold Seg52.relationRow3249 at r3249

  unfold Seg52.relationRow3250 at r3250

  unfold Seg52.relationRow3251 at r3251

  unfold Seg52.relationRow3252 at r3252

  unfold Seg52.relationRow3253 at r3253

  unfold Seg52.relationRow3254 at r3254

  unfold Seg52.relationRow3255 at r3255

  unfold Seg52.relationRow3256 at r3256

  unfold Seg52.relationRow3257 at r3257

  unfold Seg52.relationRow3258 at r3258

  unfold Seg52.relationRow3259 at r3259

  unfold Seg52.relationRow3260 at r3260

  unfold Seg52.relationRow3261 at r3261

  unfold Seg52.relationRow3262 at r3262

  unfold Seg52.relationRow3263 at r3263

  unfold Seg52.relationRow3264 at r3264

  unfold Seg52.relationRow3265 at r3265

  unfold Seg52.relationRow3266 at r3266

  unfold Seg52.relationRow3267 at r3267

  unfold Seg52.relationRow3268 at r3268

  unfold Seg52.relationRow3269 at r3269

  unfold Seg52.relationRow3270 at r3270

  unfold Seg52.relationRow3271 at r3271

  unfold Seg52.relationRow3272 at r3272

  unfold Seg52.relationRow3273 at r3273

  unfold Seg52.relationRow3274 at r3274

  unfold Seg52.relationRow3275 at r3275

  unfold Seg52.relationRow3276 at r3276

  unfold Seg52.relationRow3277 at r3277

  unfold Seg52.relationRow3278 at r3278

  unfold Seg52.relationRow3279 at r3279

  unfold Seg52.relationRow3280 at r3280

  unfold Seg52.relationRow3281 at r3281

  unfold Seg52.relationRow3282 at r3282

  unfold Seg52.relationRow3283 at r3283

  unfold Seg52.relationRow3284 at r3284

  unfold Seg52.relationRow3285 at r3285

  unfold Seg52.relationRow3286 at r3286

  unfold Seg52.relationRow3287 at r3287

  unfold Seg52.relationRow3288 at r3288

  unfold Seg52.relationRow3289 at r3289

  unfold Seg52.relationRow3290 at r3290

  unfold Seg52.relationRow3291 at r3291

  unfold Seg52.relationRow3292 at r3292

  unfold Seg52.relationRow3293 at r3293

  unfold Seg52.relationRow3294 at r3294

  unfold Seg52.relationRow3295 at r3295

  unfold Seg52.relationRow3296 at r3296

  unfold Seg52.relationRow3297 at r3297

  unfold Seg52.relationRow3298 at r3298

  unfold Seg52.relationRow3299 at r3299

  unfold Seg52.relationRow3300 at r3300

  unfold Seg52.relationRow3301 at r3301

  unfold Seg52.relationRow3302 at r3302

  unfold Seg52.relationRow3303 at r3303

  unfold Seg52.relationRow3304 at r3304

  unfold Seg52.relationRow3305 at r3305

  unfold Seg52.relationRow3306 at r3306

  unfold Seg52.relationRow3307 at r3307

  unfold Seg52.relationRow3308 at r3308

  unfold Seg52.relationRow3309 at r3309

  unfold Seg52.relationRow3310 at r3310

  unfold Seg52.relationRow3311 at r3311

  unfold Seg52.relationRow3312 at r3312

  unfold Seg52.relationRow3313 at r3313

  unfold Seg52.relationRow3314 at r3314

  unfold Seg52.relationRow3315 at r3315

  unfold Seg52.relationRow3316 at r3316

  unfold Seg52.relationRow3317 at r3317

  unfold Seg52.relationRow3318 at r3318

  unfold Seg52.relationRow3319 at r3319

  unfold Seg52.relationRow3320 at r3320

  unfold Seg52.relationRow3321 at r3321

  unfold Seg52.relationRow3322 at r3322

  unfold Seg52.relationRow3323 at r3323

  unfold Seg52.relationRow3324 at r3324

  unfold Seg52.relationRow3325 at r3325

  unfold Seg52.relationRow3326 at r3326

  unfold Seg52.relationRow3327 at r3327

  unfold Seg52.relationRow3328 at r3328

  unfold Seg52.relationRow3329 at r3329

  unfold Seg52.relationRow3330 at r3330

  have hrecover := recover_ofFn_eq_recBits rho 47594 128

  have hacc : powSumAcc rho 0 1 47594 128 = rho 105 := by

    unfold Seg52.relationRow3331 at r3331

    simp only [powSumAcc]

    linear_combination r3331

  have hrec : recover_binary_zmod' (seg52In1Bits rho) = rho 105 := by

    simp only [seg52In1Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 105) (seg52In1Bits rho)
  · intro i hi
    have key := seg52In1Bits_get rho i hi
    have hgoal : rho (47594 + i) * (1 - rho (47594 + i)) = 0 := by
      interval_cases i
      · linear_combination r3203
      · linear_combination r3204
      · linear_combination r3205
      · linear_combination r3206
      · linear_combination r3207
      · linear_combination r3208
      · linear_combination r3209
      · linear_combination r3210
      · linear_combination r3211
      · linear_combination r3212
      · linear_combination r3213
      · linear_combination r3214
      · linear_combination r3215
      · linear_combination r3216
      · linear_combination r3217
      · linear_combination r3218
      · linear_combination r3219
      · linear_combination r3220
      · linear_combination r3221
      · linear_combination r3222
      · linear_combination r3223
      · linear_combination r3224
      · linear_combination r3225
      · linear_combination r3226
      · linear_combination r3227
      · linear_combination r3228
      · linear_combination r3229
      · linear_combination r3230
      · linear_combination r3231
      · linear_combination r3232
      · linear_combination r3233
      · linear_combination r3234
      · linear_combination r3235
      · linear_combination r3236
      · linear_combination r3237
      · linear_combination r3238
      · linear_combination r3239
      · linear_combination r3240
      · linear_combination r3241
      · linear_combination r3242
      · linear_combination r3243
      · linear_combination r3244
      · linear_combination r3245
      · linear_combination r3246
      · linear_combination r3247
      · linear_combination r3248
      · linear_combination r3249
      · linear_combination r3250
      · linear_combination r3251
      · linear_combination r3252
      · linear_combination r3253
      · linear_combination r3254
      · linear_combination r3255
      · linear_combination r3256
      · linear_combination r3257
      · linear_combination r3258
      · linear_combination r3259
      · linear_combination r3260
      · linear_combination r3261
      · linear_combination r3262
      · linear_combination r3263
      · linear_combination r3264
      · linear_combination r3265
      · linear_combination r3266
      · linear_combination r3267
      · linear_combination r3268
      · linear_combination r3269
      · linear_combination r3270
      · linear_combination r3271
      · linear_combination r3272
      · linear_combination r3273
      · linear_combination r3274
      · linear_combination r3275
      · linear_combination r3276
      · linear_combination r3277
      · linear_combination r3278
      · linear_combination r3279
      · linear_combination r3280
      · linear_combination r3281
      · linear_combination r3282
      · linear_combination r3283
      · linear_combination r3284
      · linear_combination r3285
      · linear_combination r3286
      · linear_combination r3287
      · linear_combination r3288
      · linear_combination r3289
      · linear_combination r3290
      · linear_combination r3291
      · linear_combination r3292
      · linear_combination r3293
      · linear_combination r3294
      · linear_combination r3295
      · linear_combination r3296
      · linear_combination r3297
      · linear_combination r3298
      · linear_combination r3299
      · linear_combination r3300
      · linear_combination r3301
      · linear_combination r3302
      · linear_combination r3303
      · linear_combination r3304
      · linear_combination r3305
      · linear_combination r3306
      · linear_combination r3307
      · linear_combination r3308
      · linear_combination r3309
      · linear_combination r3310
      · linear_combination r3311
      · linear_combination r3312
      · linear_combination r3313
      · linear_combination r3314
      · linear_combination r3315
      · linear_combination r3316
      · linear_combination r3317
      · linear_combination r3318
      · linear_combination r3319
      · linear_combination r3320
      · linear_combination r3321
      · linear_combination r3322
      · linear_combination r3323
      · linear_combination r3324
      · linear_combination r3325
      · linear_combination r3326
      · linear_combination r3327
      · linear_combination r3328
      · linear_combination r3329
      · linear_combination r3330
    have key' : (seg52In1Bits rho)[i] = rho (47594 + i) := by
      rw [← getElem!_pos (seg52In1Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
