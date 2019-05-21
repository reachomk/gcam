.class public final Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "CameraFacingStatechartInitializer_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final cameraFacingStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUiProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;->cameraFacingStatechartProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1027
    new-instance v1, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;->cameraFacingStatechartProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CameraFacingStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer_Factory;->cameraUiProvider:Ljavax/inject/Provider;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/CameraFacingStatechart;Ljavax/inject/Provider;)V

    .line 9
    return-object v1
.end method
