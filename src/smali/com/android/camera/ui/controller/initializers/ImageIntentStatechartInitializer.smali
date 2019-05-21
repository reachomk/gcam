.class public final Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;
.super Ljava/lang/Object;
.source "ImageIntentStatechartInitializer.java"

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

.field private final flashOverrideStatechart:Lcom/android/camera/ui/controller/FlashOverrideStatechart;

.field private final imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

.field private final window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;Ldagger/Lazy;Landroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
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
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    .line 29
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->cameraActivityUi:Ldagger/Lazy;

    .line 30
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->flashOverrideStatechart:Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    .line 31
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->window:Landroid/view/Window;

    .line 32
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->cameraActivityUi:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 37
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->flashOverrideStatechart:Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/controller/FlashOverrideStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V

    .line 38
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->imageIntentStatechart:Lcom/android/camera/ui/controller/ImageIntentStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->window:Landroid/view/Window;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/controller/ImageIntentStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Landroid/view/Window;)V

    .line 39
    return-void
.end method
