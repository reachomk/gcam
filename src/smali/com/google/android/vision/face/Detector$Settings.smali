.class public Lcom/google/android/vision/face/Detector$Settings;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vision/face/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field static final APK_MODEL_FILES_LOCATION:I = 0x1

.field static final LOCAL_MODEL_FILES_LOCATION:I


# instance fields
.field private mClassificationSettings:Lcom/google/android/vision/face/Detector$ClassificationSettings;

.field private mDetectionSettings:Lcom/google/android/vision/face/Detector$DetectionSettings;

.field private mModelFilesLocation:I

.field private mTrackingSettings:Lcom/google/android/vision/face/Detector$TrackingSettings;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mModelFilesLocation:I

    .line 292
    new-instance v0, Lcom/google/android/vision/face/Detector$DetectionSettings;

    invoke-direct {v0}, Lcom/google/android/vision/face/Detector$DetectionSettings;-><init>()V

    iput-object v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mDetectionSettings:Lcom/google/android/vision/face/Detector$DetectionSettings;

    .line 293
    new-instance v0, Lcom/google/android/vision/face/Detector$TrackingSettings;

    invoke-direct {v0}, Lcom/google/android/vision/face/Detector$TrackingSettings;-><init>()V

    iput-object v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mTrackingSettings:Lcom/google/android/vision/face/Detector$TrackingSettings;

    .line 294
    new-instance v0, Lcom/google/android/vision/face/Detector$ClassificationSettings;

    invoke-direct {v0}, Lcom/google/android/vision/face/Detector$ClassificationSettings;-><init>()V

    iput-object v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mClassificationSettings:Lcom/google/android/vision/face/Detector$ClassificationSettings;

    .line 295
    return-void
.end method


# virtual methods
.method getClassificationSettings()Lcom/google/android/vision/face/Detector$ClassificationSettings;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mClassificationSettings:Lcom/google/android/vision/face/Detector$ClassificationSettings;

    return-object v0
.end method

.method getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mDetectionSettings:Lcom/google/android/vision/face/Detector$DetectionSettings;

    return-object v0
.end method

.method getModelFilesLocation()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mModelFilesLocation:I

    return v0
.end method

.method getTrackingSettings()Lcom/google/android/vision/face/Detector$TrackingSettings;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/vision/face/Detector$Settings;->mTrackingSettings:Lcom/google/android/vision/face/Detector$TrackingSettings;

    return-object v0
.end method

.method setModelFilesLocation(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lcom/google/android/vision/face/Detector$Settings;->mModelFilesLocation:I

    .line 285
    return-void
.end method
