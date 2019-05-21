.class public final Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule;
.super Ljava/lang/Object;
.source "PictureTakerModules.java"


# static fields
.field private static final NOOP_STATE_TRACKER:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule$1;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule;->NOOP_STATE_TRACKER:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;

    return-void
.end method

.method public static provideImageCaptureStateTracker()Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule;->NOOP_STATE_TRACKER:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;

    return-object v0
.end method
