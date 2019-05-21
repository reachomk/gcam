.class public final Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;
.super Ljava/lang/Object;
.source "PanoramaStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final cameraActivityUi:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/PanoramaStatechart;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    .line 21
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;->panoramaStatechart:Lcom/android/camera/ui/controller/PanoramaStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v2, 0x7f1100be

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/controller/PanoramaStatechart;->initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V

    .line 28
    return-void
.end method
