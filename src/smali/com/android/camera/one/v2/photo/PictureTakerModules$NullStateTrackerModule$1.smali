.class final Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule$1;
.super Ljava/lang/Object;
.source "PictureTakerModules.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/PictureTakerModules$NullStateTrackerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCaptureState()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method
