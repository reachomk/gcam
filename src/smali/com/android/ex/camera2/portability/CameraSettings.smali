.class public abstract Lcom/android/ex/camera2/portability/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected mAutoExposureLocked:Z

.field protected mAutoWhiteBalanceLocked:Z

.field protected mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field protected mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field protected mCurrentPhotoFormat:I

.field private mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

.field private mCurrentPreviewFormat:I

.field protected mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

.field protected mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field protected mCurrentZoomRatio:F

.field protected mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

.field protected mExposureCompensationIndex:I

.field protected final mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

.field protected mJpegCompressQuality:B

.field protected final mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewFpsRangeMax:I

.field protected mPreviewFpsRangeMin:I

.field protected mPreviewFrameRate:I

.field protected mRecordingHintEnabled:Z

.field protected mSizesLocked:Z

.field protected mVideoStabilizationEnabled:Z

.field protected mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 121
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 122
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 123
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 124
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 126
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    .line 127
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 129
    iget-byte v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    iput-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    .line 130
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    .line 131
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    .line 132
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 133
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 134
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 135
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 136
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 137
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    .line 138
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    .line 139
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    .line 140
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    .line 141
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .line 142
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 143
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v2, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v2}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    goto :goto_1
.end method


# virtual methods
.method public abstract copy()Lcom/android/ex/camera2/portability/CameraSettings;
.end method

.method public final getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object v0
.end method

.method public final getCurrentPhotoFormat()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    return v0
.end method

.method public final getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public final getCurrentPreviewFormat()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    return v0
.end method

.method public final getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public final getFocusAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getMeteringAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final setAutoExposureLock(Z)V
    .locals 0

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    .line 355
    return-void
.end method

.method public final setAutoWhiteBalanceLock(Z)V
    .locals 0

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    .line 438
    return-void
.end method

.method public final setExifThumbnailSize(Lcom/android/ex/camera2/portability/Size;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 502
    return-void
.end method

.method public final setExposureCompensationIndex(I)V
    .locals 0

    .prologue
    .line 343
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 344
    return-void
.end method

.method public final setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 388
    return-void
.end method

.method public final setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 417
    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    :cond_0
    return-void
.end method

.method public final setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 398
    return-void
.end method

.method public final setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_0
    return-void
.end method

.method public final setPhotoJpegCompressionQuality(I)V
    .locals 2

    .prologue
    .line 307
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 308
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Ignoring JPEG quality that falls outside the expected range"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_1
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    goto :goto_0
.end method

.method public final setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Attempt to change photo size while locked"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    .line 279
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 280
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setPreviewFormat(I)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    .line 250
    return-void
.end method

.method public final setPreviewFpsRange(II)V
    .locals 2

    .prologue
    .line 179
    if-le p1, p2, :cond_0

    .line 184
    :goto_0
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 185
    iput p2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 187
    return-void

    :cond_0
    move v1, p2

    move p2, p1

    move p1, v1

    goto :goto_0
.end method

.method public final setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Attempt to change preview size while locked"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    .line 238
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 461
    return-void
.end method

.method public final setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 430
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    .prologue
    .line 337
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    .line 338
    return-void
.end method
