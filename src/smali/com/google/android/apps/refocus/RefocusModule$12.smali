.class final Lcom/google/android/apps/refocus/RefocusModule$12;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$12;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutter$51666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78923C5MMASJ1A1P6UU3P7CKLC___()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$12;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1700(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    sget v1, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->PANORAMA_SINGLE_PHOTO_SHUTTER_SOUND:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V

    .line 720
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$12;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/ShutterAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/camera/ShutterAnimation;->start()V

    .line 721
    return-void
.end method
