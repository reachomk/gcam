.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    .line 1196
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 1197
    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1198
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_countdown_duration_key"

    .line 1199
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1202
    new-instance v2, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;

    invoke-direct {v2, p1, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;-><init>(Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;I)V

    .line 1216
    if-lez v1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$402(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z

    .line 1218
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1219
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v3, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$2;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;I)V

    .line 1220
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1247
    :goto_0
    return-object v4

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0, v2}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V

    goto :goto_0
.end method
