.class public final Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "PhotoSphereStatechartInitializer_Factory.java"

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
.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final photoSphereStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
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
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;->photoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 1027
    new-instance v1, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;->photoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/PhotoSphereStatechart;Ljavax/inject/Provider;)V

    .line 9
    return-object v1
.end method
