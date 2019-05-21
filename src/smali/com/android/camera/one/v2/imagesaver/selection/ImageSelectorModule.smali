.class public Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;
.super Ljava/lang/Object;
.source "ImageSelectorModule.java"


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/camera/util/ApiHelper;)V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    .line 1015
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1016
    return-void
.end method


# virtual methods
.method public getBlacklistedPreviewResolutionsBack()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1047
    const-string v0, ""

    .line 1048
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    const-string v0, "1440x1080,1920x1080"

    .line 1051
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:blacklisted_preview_resolutions_back"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlacklistedPreviewResolutionsFront()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1060
    const-string v0, ""

    .line 1061
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    const-string v0, "1440x1080,1920x1080"

    .line 1064
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:blacklisted_preview_resolutions_back"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlacklistedResolutionsBack()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1024
    const-string v0, ""

    .line 1025
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    const-string v0, "2592x1458"

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:blacklisted_resolutions_back"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlacklistedResolutionsFront()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1037
    const-string v0, ""

    .line 1038
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:blacklisted_resolutions_front"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureSupportLevelOverrideBack()I
    .locals 3

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:capture_support_level_override_back"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCaptureSupportLevelOverrideFront()I
    .locals 3

    .prologue
    .line 1094
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLMr1OrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    :cond_0
    const/4 v0, 0x1

    .line 1098
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:capture_support_level_override_front"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFilmstripMaximumFullResolutionPixels(I)I
    .locals 3

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:filmstrip_tiny_bounds"

    const v2, 0x15752a0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFilmstripMaximumSmoothPixels(I)I
    .locals 3

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:filmstrip_maximum_smooth_pixels"

    const v2, 0x4c4b40

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFilmstripTinyThumbnailBounds(I)I
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:filmstrip_tiny_bounds"

    const/16 v2, 0x200

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImageReaderTicketLimit()I
    .locals 3

    .prologue
    .line 1438
    .line 1439
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxAllowedHdrPlusImageReaderCount()I

    move-result v0

    .line 1440
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxAllowedImageReaderCount()I

    move-result v1

    .line 1438
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1441
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxHdrPlusBurstFrameCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1442
    add-int/2addr v0, v1

    .line 1443
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:global_imagereader_ticket_limit"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLensBlurMegapixelCount()I
    .locals 3

    .prologue
    .line 1377
    const/4 v0, 0x3

    .line 1380
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1381
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1382
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1383
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1384
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1385
    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1386
    :cond_0
    const/4 v0, 0x5

    .line 1388
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "lens_blur_megapixels"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMax1080pTorchVideoDurationSeconds()I
    .locals 3

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_1080p_torch_video_duration_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMax1080pVideoDurationSeconds()I
    .locals 3

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_1080p_video_duration_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMax2160pTorchVideoDurationSeconds()I
    .locals 3

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_2160p_torch_video_duration_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMax2160pVideoDurationSeconds()I
    .locals 3

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_2160p_video_duration_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxAllowedHdrPlusImageReaderCount()I
    .locals 3

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxHdrPlusBurstFrameCount()I

    move-result v0

    .line 1242
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    shl-int/lit8 v0, v0, 0x1

    .line 1249
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:max_hdr_plus_imagereader_image_count"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1244
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1245
    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    :cond_3
    mul-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public getMaxAllowedImageReaderCount()I
    .locals 4

    .prologue
    const/16 v1, 0x9

    const/4 v2, 0x1

    .line 1171
    const/16 v0, 0xf

    .line 1172
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v3}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isNexus6ZslEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1182
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v3}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1186
    :goto_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1188
    :cond_1
    const/16 v1, 0xe

    .line 1190
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1193
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isBullheadZslEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1194
    const/4 v2, 0x3

    .line 1203
    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x6

    .line 1204
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:max_imagereader_image_count"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_4
    move v0, v2

    .line 1179
    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public getMaxAllowedNativeMemoryMb()I
    .locals 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_allowed_native_memory_mb"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxHdrPlusBurstFrameCount()I
    .locals 3

    .prologue
    .line 1212
    const/16 v0, 0x8

    .line 1213
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    const/4 v0, 0x5

    .line 1221
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:max_hdr_plus_burst_frame_count"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1215
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1217
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v1}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    :cond_2
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public getMaxHfrTorchVideoDurationSeconds()I
    .locals 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_hfr_torch_video_duration_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxHfrVideoDurationSeconds()I
    .locals 3

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:max_hfr_video_duration_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getZslBufferCount()I
    .locals 3

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxHdrPlusBurstFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 1233
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:hdr_plus_zsl_buffer_count"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBullheadZslEnabled()Z
    .locals 3

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:zsl_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDeviceSupportingWhiteBalance()Z
    .locals 3

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:white_balance_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGcamEnabled()Z
    .locals 3

    .prologue
    .line 1145
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:gcam_enabled"

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1148
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1149
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1150
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1151
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus5X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1152
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1153
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1145
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHybridBurstSupported()Z
    .locals 3

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1119
    :goto_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:hybrid_burst_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNexus6ZslEnabled()Z
    .locals 3

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:zsl_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRefocusFaceEnabled()Z
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:refocus_face_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmartBurstEnabled()Z
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 1108
    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexus6P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1109
    :goto_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "camera:smartburst_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTorch1080pVideoEnabled()Z
    .locals 3

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:torch_1080p_video_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTorch2160pVideoEnabled()Z
    .locals 3

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:torch_2160p_video_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTorchHfrVideoEnabled()Z
    .locals 3

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:torch_hfr_video_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useGyroSensorDelayFastestForPanorama()Z
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:use_gyro_sensor_delay_fastest_for_panorama"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useRenderScript()Z
    .locals 3

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera:use_renderscript"

    .line 1352
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isRenderscriptEnabled()Z

    move-result v2

    .line 1351
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
