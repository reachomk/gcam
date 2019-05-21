.class public final Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;
.super Ljava/lang/Object;
.source "VideoIntentStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final cameraActivityUi:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

.field private final videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

.field private final videoTorchStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

.field private final window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/VideoIntentStatechart;Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;Ldagger/Lazy;Landroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/VideoIntentStatechart;",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            "Ldagger/Lazy",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Landroid/view/Window;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    .line 29
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    .line 30
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoTorchStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    .line 31
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->cameraActivityUi:Ldagger/Lazy;

    .line 32
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->window:Landroid/view/Window;

    .line 33
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->cameraActivityUi:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 38
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    invoke-virtual {v1}, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->initialize()V

    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoTorchStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    invoke-virtual {v1}, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->initialize()V

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->window:Landroid/view/Window;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;->videoIntentStatechart:Lcom/android/camera/ui/controller/VideoIntentStatechart;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/VideoIntentStatechart;->enter()V

    .line 42
    return-void
.end method
