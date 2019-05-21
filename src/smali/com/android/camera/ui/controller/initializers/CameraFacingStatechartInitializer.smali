.class public final Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;
.super Ljava/lang/Object;
.source "CameraFacingStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

.field private final cameraUi:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraFacingStatechart;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    .line 25
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;->cameraUi:Ljavax/inject/Provider;

    .line 26
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;->cameraUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f110193

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;

    .line 31
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/controller/CameraFacingStatechart;->initialize(Lcom/android/camera/ui/viewfinder/ViewfinderCover;)V

    .line 32
    return-void
.end method
