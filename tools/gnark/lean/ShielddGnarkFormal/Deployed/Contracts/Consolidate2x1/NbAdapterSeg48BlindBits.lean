import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48BlindBits_toBinary (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    GatesDef.to_binary (rho 5) 251 (seg48BlindBits rho) := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, p77, p78, p79,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, r6315, r6316, r6317, r6318, r6319⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340, r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353, r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366, r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379, r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392, r6393, r6394, r6395, r6396, r6397, r6398, r6399⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨r6400, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow6149 at r6149

  unfold Seg48.relationRow6150 at r6150

  unfold Seg48.relationRow6151 at r6151

  unfold Seg48.relationRow6152 at r6152

  unfold Seg48.relationRow6153 at r6153

  unfold Seg48.relationRow6154 at r6154

  unfold Seg48.relationRow6155 at r6155

  unfold Seg48.relationRow6156 at r6156

  unfold Seg48.relationRow6157 at r6157

  unfold Seg48.relationRow6158 at r6158

  unfold Seg48.relationRow6159 at r6159

  unfold Seg48.relationRow6160 at r6160

  unfold Seg48.relationRow6161 at r6161

  unfold Seg48.relationRow6162 at r6162

  unfold Seg48.relationRow6163 at r6163

  unfold Seg48.relationRow6164 at r6164

  unfold Seg48.relationRow6165 at r6165

  unfold Seg48.relationRow6166 at r6166

  unfold Seg48.relationRow6167 at r6167

  unfold Seg48.relationRow6168 at r6168

  unfold Seg48.relationRow6169 at r6169

  unfold Seg48.relationRow6170 at r6170

  unfold Seg48.relationRow6171 at r6171

  unfold Seg48.relationRow6172 at r6172

  unfold Seg48.relationRow6173 at r6173

  unfold Seg48.relationRow6174 at r6174

  unfold Seg48.relationRow6175 at r6175

  unfold Seg48.relationRow6176 at r6176

  unfold Seg48.relationRow6177 at r6177

  unfold Seg48.relationRow6178 at r6178

  unfold Seg48.relationRow6179 at r6179

  unfold Seg48.relationRow6180 at r6180

  unfold Seg48.relationRow6181 at r6181

  unfold Seg48.relationRow6182 at r6182

  unfold Seg48.relationRow6183 at r6183

  unfold Seg48.relationRow6184 at r6184

  unfold Seg48.relationRow6185 at r6185

  unfold Seg48.relationRow6186 at r6186

  unfold Seg48.relationRow6187 at r6187

  unfold Seg48.relationRow6188 at r6188

  unfold Seg48.relationRow6189 at r6189

  unfold Seg48.relationRow6190 at r6190

  unfold Seg48.relationRow6191 at r6191

  unfold Seg48.relationRow6192 at r6192

  unfold Seg48.relationRow6193 at r6193

  unfold Seg48.relationRow6194 at r6194

  unfold Seg48.relationRow6195 at r6195

  unfold Seg48.relationRow6196 at r6196

  unfold Seg48.relationRow6197 at r6197

  unfold Seg48.relationRow6198 at r6198

  unfold Seg48.relationRow6199 at r6199

  unfold Seg48.relationRow6200 at r6200

  unfold Seg48.relationRow6201 at r6201

  unfold Seg48.relationRow6202 at r6202

  unfold Seg48.relationRow6203 at r6203

  unfold Seg48.relationRow6204 at r6204

  unfold Seg48.relationRow6205 at r6205

  unfold Seg48.relationRow6206 at r6206

  unfold Seg48.relationRow6207 at r6207

  unfold Seg48.relationRow6208 at r6208

  unfold Seg48.relationRow6209 at r6209

  unfold Seg48.relationRow6210 at r6210

  unfold Seg48.relationRow6211 at r6211

  unfold Seg48.relationRow6212 at r6212

  unfold Seg48.relationRow6213 at r6213

  unfold Seg48.relationRow6214 at r6214

  unfold Seg48.relationRow6215 at r6215

  unfold Seg48.relationRow6216 at r6216

  unfold Seg48.relationRow6217 at r6217

  unfold Seg48.relationRow6218 at r6218

  unfold Seg48.relationRow6219 at r6219

  unfold Seg48.relationRow6220 at r6220

  unfold Seg48.relationRow6221 at r6221

  unfold Seg48.relationRow6222 at r6222

  unfold Seg48.relationRow6223 at r6223

  unfold Seg48.relationRow6224 at r6224

  unfold Seg48.relationRow6225 at r6225

  unfold Seg48.relationRow6226 at r6226

  unfold Seg48.relationRow6227 at r6227

  unfold Seg48.relationRow6228 at r6228

  unfold Seg48.relationRow6229 at r6229

  unfold Seg48.relationRow6230 at r6230

  unfold Seg48.relationRow6231 at r6231

  unfold Seg48.relationRow6232 at r6232

  unfold Seg48.relationRow6233 at r6233

  unfold Seg48.relationRow6234 at r6234

  unfold Seg48.relationRow6235 at r6235

  unfold Seg48.relationRow6236 at r6236

  unfold Seg48.relationRow6237 at r6237

  unfold Seg48.relationRow6238 at r6238

  unfold Seg48.relationRow6239 at r6239

  unfold Seg48.relationRow6240 at r6240

  unfold Seg48.relationRow6241 at r6241

  unfold Seg48.relationRow6242 at r6242

  unfold Seg48.relationRow6243 at r6243

  unfold Seg48.relationRow6244 at r6244

  unfold Seg48.relationRow6245 at r6245

  unfold Seg48.relationRow6246 at r6246

  unfold Seg48.relationRow6247 at r6247

  unfold Seg48.relationRow6248 at r6248

  unfold Seg48.relationRow6249 at r6249

  unfold Seg48.relationRow6250 at r6250

  unfold Seg48.relationRow6251 at r6251

  unfold Seg48.relationRow6252 at r6252

  unfold Seg48.relationRow6253 at r6253

  unfold Seg48.relationRow6254 at r6254

  unfold Seg48.relationRow6255 at r6255

  unfold Seg48.relationRow6256 at r6256

  unfold Seg48.relationRow6257 at r6257

  unfold Seg48.relationRow6258 at r6258

  unfold Seg48.relationRow6259 at r6259

  unfold Seg48.relationRow6260 at r6260

  unfold Seg48.relationRow6261 at r6261

  unfold Seg48.relationRow6262 at r6262

  unfold Seg48.relationRow6263 at r6263

  unfold Seg48.relationRow6264 at r6264

  unfold Seg48.relationRow6265 at r6265

  unfold Seg48.relationRow6266 at r6266

  unfold Seg48.relationRow6267 at r6267

  unfold Seg48.relationRow6268 at r6268

  unfold Seg48.relationRow6269 at r6269

  unfold Seg48.relationRow6270 at r6270

  unfold Seg48.relationRow6271 at r6271

  unfold Seg48.relationRow6272 at r6272

  unfold Seg48.relationRow6273 at r6273

  unfold Seg48.relationRow6274 at r6274

  unfold Seg48.relationRow6275 at r6275

  unfold Seg48.relationRow6276 at r6276

  unfold Seg48.relationRow6277 at r6277

  unfold Seg48.relationRow6278 at r6278

  unfold Seg48.relationRow6279 at r6279

  unfold Seg48.relationRow6280 at r6280

  unfold Seg48.relationRow6281 at r6281

  unfold Seg48.relationRow6282 at r6282

  unfold Seg48.relationRow6283 at r6283

  unfold Seg48.relationRow6284 at r6284

  unfold Seg48.relationRow6285 at r6285

  unfold Seg48.relationRow6286 at r6286

  unfold Seg48.relationRow6287 at r6287

  unfold Seg48.relationRow6288 at r6288

  unfold Seg48.relationRow6289 at r6289

  unfold Seg48.relationRow6290 at r6290

  unfold Seg48.relationRow6291 at r6291

  unfold Seg48.relationRow6292 at r6292

  unfold Seg48.relationRow6293 at r6293

  unfold Seg48.relationRow6294 at r6294

  unfold Seg48.relationRow6295 at r6295

  unfold Seg48.relationRow6296 at r6296

  unfold Seg48.relationRow6297 at r6297

  unfold Seg48.relationRow6298 at r6298

  unfold Seg48.relationRow6299 at r6299

  unfold Seg48.relationRow6300 at r6300

  unfold Seg48.relationRow6301 at r6301

  unfold Seg48.relationRow6302 at r6302

  unfold Seg48.relationRow6303 at r6303

  unfold Seg48.relationRow6304 at r6304

  unfold Seg48.relationRow6305 at r6305

  unfold Seg48.relationRow6306 at r6306

  unfold Seg48.relationRow6307 at r6307

  unfold Seg48.relationRow6308 at r6308

  unfold Seg48.relationRow6309 at r6309

  unfold Seg48.relationRow6310 at r6310

  unfold Seg48.relationRow6311 at r6311

  unfold Seg48.relationRow6312 at r6312

  unfold Seg48.relationRow6313 at r6313

  unfold Seg48.relationRow6314 at r6314

  unfold Seg48.relationRow6315 at r6315

  unfold Seg48.relationRow6316 at r6316

  unfold Seg48.relationRow6317 at r6317

  unfold Seg48.relationRow6318 at r6318

  unfold Seg48.relationRow6319 at r6319

  unfold Seg48.relationRow6320 at r6320

  unfold Seg48.relationRow6321 at r6321

  unfold Seg48.relationRow6322 at r6322

  unfold Seg48.relationRow6323 at r6323

  unfold Seg48.relationRow6324 at r6324

  unfold Seg48.relationRow6325 at r6325

  unfold Seg48.relationRow6326 at r6326

  unfold Seg48.relationRow6327 at r6327

  unfold Seg48.relationRow6328 at r6328

  unfold Seg48.relationRow6329 at r6329

  unfold Seg48.relationRow6330 at r6330

  unfold Seg48.relationRow6331 at r6331

  unfold Seg48.relationRow6332 at r6332

  unfold Seg48.relationRow6333 at r6333

  unfold Seg48.relationRow6334 at r6334

  unfold Seg48.relationRow6335 at r6335

  unfold Seg48.relationRow6336 at r6336

  unfold Seg48.relationRow6337 at r6337

  unfold Seg48.relationRow6338 at r6338

  unfold Seg48.relationRow6339 at r6339

  unfold Seg48.relationRow6340 at r6340

  unfold Seg48.relationRow6341 at r6341

  unfold Seg48.relationRow6342 at r6342

  unfold Seg48.relationRow6343 at r6343

  unfold Seg48.relationRow6344 at r6344

  unfold Seg48.relationRow6345 at r6345

  unfold Seg48.relationRow6346 at r6346

  unfold Seg48.relationRow6347 at r6347

  unfold Seg48.relationRow6348 at r6348

  unfold Seg48.relationRow6349 at r6349

  unfold Seg48.relationRow6350 at r6350

  unfold Seg48.relationRow6351 at r6351

  unfold Seg48.relationRow6352 at r6352

  unfold Seg48.relationRow6353 at r6353

  unfold Seg48.relationRow6354 at r6354

  unfold Seg48.relationRow6355 at r6355

  unfold Seg48.relationRow6356 at r6356

  unfold Seg48.relationRow6357 at r6357

  unfold Seg48.relationRow6358 at r6358

  unfold Seg48.relationRow6359 at r6359

  unfold Seg48.relationRow6360 at r6360

  unfold Seg48.relationRow6361 at r6361

  unfold Seg48.relationRow6362 at r6362

  unfold Seg48.relationRow6363 at r6363

  unfold Seg48.relationRow6364 at r6364

  unfold Seg48.relationRow6365 at r6365

  unfold Seg48.relationRow6366 at r6366

  unfold Seg48.relationRow6367 at r6367

  unfold Seg48.relationRow6368 at r6368

  unfold Seg48.relationRow6369 at r6369

  unfold Seg48.relationRow6370 at r6370

  unfold Seg48.relationRow6371 at r6371

  unfold Seg48.relationRow6372 at r6372

  unfold Seg48.relationRow6373 at r6373

  unfold Seg48.relationRow6374 at r6374

  unfold Seg48.relationRow6375 at r6375

  unfold Seg48.relationRow6376 at r6376

  unfold Seg48.relationRow6377 at r6377

  unfold Seg48.relationRow6378 at r6378

  unfold Seg48.relationRow6379 at r6379

  unfold Seg48.relationRow6380 at r6380

  unfold Seg48.relationRow6381 at r6381

  unfold Seg48.relationRow6382 at r6382

  unfold Seg48.relationRow6383 at r6383

  unfold Seg48.relationRow6384 at r6384

  unfold Seg48.relationRow6385 at r6385

  unfold Seg48.relationRow6386 at r6386

  unfold Seg48.relationRow6387 at r6387

  unfold Seg48.relationRow6388 at r6388

  unfold Seg48.relationRow6389 at r6389

  unfold Seg48.relationRow6390 at r6390

  unfold Seg48.relationRow6391 at r6391

  unfold Seg48.relationRow6392 at r6392

  unfold Seg48.relationRow6393 at r6393

  unfold Seg48.relationRow6394 at r6394

  unfold Seg48.relationRow6395 at r6395

  unfold Seg48.relationRow6396 at r6396

  unfold Seg48.relationRow6397 at r6397

  unfold Seg48.relationRow6398 at r6398

  unfold Seg48.relationRow6399 at r6399

  have hrecover := recover_ofFn_eq_recBits rho 38906 251

  have hacc : powSumAcc rho 0 1 38906 251 = rho 5 := by

    unfold Seg48.relationRow6400 at r6400

    simp only [powSumAcc]

    linear_combination r6400

  have hrec : recover_binary_zmod' (seg48BlindBits rho) = rho 5 := by

    simp only [seg48BlindBits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 5) (seg48BlindBits rho)
  · intro i hi
    have key := seg48BlindBits_get rho i hi
    have hgoal : rho (38906 + i) * (1 - rho (38906 + i)) = 0 := by
      interval_cases i
      · linear_combination r6149
      · linear_combination r6150
      · linear_combination r6151
      · linear_combination r6152
      · linear_combination r6153
      · linear_combination r6154
      · linear_combination r6155
      · linear_combination r6156
      · linear_combination r6157
      · linear_combination r6158
      · linear_combination r6159
      · linear_combination r6160
      · linear_combination r6161
      · linear_combination r6162
      · linear_combination r6163
      · linear_combination r6164
      · linear_combination r6165
      · linear_combination r6166
      · linear_combination r6167
      · linear_combination r6168
      · linear_combination r6169
      · linear_combination r6170
      · linear_combination r6171
      · linear_combination r6172
      · linear_combination r6173
      · linear_combination r6174
      · linear_combination r6175
      · linear_combination r6176
      · linear_combination r6177
      · linear_combination r6178
      · linear_combination r6179
      · linear_combination r6180
      · linear_combination r6181
      · linear_combination r6182
      · linear_combination r6183
      · linear_combination r6184
      · linear_combination r6185
      · linear_combination r6186
      · linear_combination r6187
      · linear_combination r6188
      · linear_combination r6189
      · linear_combination r6190
      · linear_combination r6191
      · linear_combination r6192
      · linear_combination r6193
      · linear_combination r6194
      · linear_combination r6195
      · linear_combination r6196
      · linear_combination r6197
      · linear_combination r6198
      · linear_combination r6199
      · linear_combination r6200
      · linear_combination r6201
      · linear_combination r6202
      · linear_combination r6203
      · linear_combination r6204
      · linear_combination r6205
      · linear_combination r6206
      · linear_combination r6207
      · linear_combination r6208
      · linear_combination r6209
      · linear_combination r6210
      · linear_combination r6211
      · linear_combination r6212
      · linear_combination r6213
      · linear_combination r6214
      · linear_combination r6215
      · linear_combination r6216
      · linear_combination r6217
      · linear_combination r6218
      · linear_combination r6219
      · linear_combination r6220
      · linear_combination r6221
      · linear_combination r6222
      · linear_combination r6223
      · linear_combination r6224
      · linear_combination r6225
      · linear_combination r6226
      · linear_combination r6227
      · linear_combination r6228
      · linear_combination r6229
      · linear_combination r6230
      · linear_combination r6231
      · linear_combination r6232
      · linear_combination r6233
      · linear_combination r6234
      · linear_combination r6235
      · linear_combination r6236
      · linear_combination r6237
      · linear_combination r6238
      · linear_combination r6239
      · linear_combination r6240
      · linear_combination r6241
      · linear_combination r6242
      · linear_combination r6243
      · linear_combination r6244
      · linear_combination r6245
      · linear_combination r6246
      · linear_combination r6247
      · linear_combination r6248
      · linear_combination r6249
      · linear_combination r6250
      · linear_combination r6251
      · linear_combination r6252
      · linear_combination r6253
      · linear_combination r6254
      · linear_combination r6255
      · linear_combination r6256
      · linear_combination r6257
      · linear_combination r6258
      · linear_combination r6259
      · linear_combination r6260
      · linear_combination r6261
      · linear_combination r6262
      · linear_combination r6263
      · linear_combination r6264
      · linear_combination r6265
      · linear_combination r6266
      · linear_combination r6267
      · linear_combination r6268
      · linear_combination r6269
      · linear_combination r6270
      · linear_combination r6271
      · linear_combination r6272
      · linear_combination r6273
      · linear_combination r6274
      · linear_combination r6275
      · linear_combination r6276
      · linear_combination r6277
      · linear_combination r6278
      · linear_combination r6279
      · linear_combination r6280
      · linear_combination r6281
      · linear_combination r6282
      · linear_combination r6283
      · linear_combination r6284
      · linear_combination r6285
      · linear_combination r6286
      · linear_combination r6287
      · linear_combination r6288
      · linear_combination r6289
      · linear_combination r6290
      · linear_combination r6291
      · linear_combination r6292
      · linear_combination r6293
      · linear_combination r6294
      · linear_combination r6295
      · linear_combination r6296
      · linear_combination r6297
      · linear_combination r6298
      · linear_combination r6299
      · linear_combination r6300
      · linear_combination r6301
      · linear_combination r6302
      · linear_combination r6303
      · linear_combination r6304
      · linear_combination r6305
      · linear_combination r6306
      · linear_combination r6307
      · linear_combination r6308
      · linear_combination r6309
      · linear_combination r6310
      · linear_combination r6311
      · linear_combination r6312
      · linear_combination r6313
      · linear_combination r6314
      · linear_combination r6315
      · linear_combination r6316
      · linear_combination r6317
      · linear_combination r6318
      · linear_combination r6319
      · linear_combination r6320
      · linear_combination r6321
      · linear_combination r6322
      · linear_combination r6323
      · linear_combination r6324
      · linear_combination r6325
      · linear_combination r6326
      · linear_combination r6327
      · linear_combination r6328
      · linear_combination r6329
      · linear_combination r6330
      · linear_combination r6331
      · linear_combination r6332
      · linear_combination r6333
      · linear_combination r6334
      · linear_combination r6335
      · linear_combination r6336
      · linear_combination r6337
      · linear_combination r6338
      · linear_combination r6339
      · linear_combination r6340
      · linear_combination r6341
      · linear_combination r6342
      · linear_combination r6343
      · linear_combination r6344
      · linear_combination r6345
      · linear_combination r6346
      · linear_combination r6347
      · linear_combination r6348
      · linear_combination r6349
      · linear_combination r6350
      · linear_combination r6351
      · linear_combination r6352
      · linear_combination r6353
      · linear_combination r6354
      · linear_combination r6355
      · linear_combination r6356
      · linear_combination r6357
      · linear_combination r6358
      · linear_combination r6359
      · linear_combination r6360
      · linear_combination r6361
      · linear_combination r6362
      · linear_combination r6363
      · linear_combination r6364
      · linear_combination r6365
      · linear_combination r6366
      · linear_combination r6367
      · linear_combination r6368
      · linear_combination r6369
      · linear_combination r6370
      · linear_combination r6371
      · linear_combination r6372
      · linear_combination r6373
      · linear_combination r6374
      · linear_combination r6375
      · linear_combination r6376
      · linear_combination r6377
      · linear_combination r6378
      · linear_combination r6379
      · linear_combination r6380
      · linear_combination r6381
      · linear_combination r6382
      · linear_combination r6383
      · linear_combination r6384
      · linear_combination r6385
      · linear_combination r6386
      · linear_combination r6387
      · linear_combination r6388
      · linear_combination r6389
      · linear_combination r6390
      · linear_combination r6391
      · linear_combination r6392
      · linear_combination r6393
      · linear_combination r6394
      · linear_combination r6395
      · linear_combination r6396
      · linear_combination r6397
      · linear_combination r6398
      · linear_combination r6399
    have key' : (seg48BlindBits rho)[i] = rho (38906 + i) := by
      rw [← getElem!_pos (seg48BlindBits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
