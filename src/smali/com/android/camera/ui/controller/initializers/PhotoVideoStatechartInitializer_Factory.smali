.class public final Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "PhotoVideoStatechartInitializer_Factory.java"

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

.field private final flashOverrideStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final photoVideoStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSwipeStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoTorchStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->photoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->videoSwipeStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->videoTorchStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    .line 1044
    new-instance v0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->photoVideoStatechartProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->videoSwipeStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->videoTorchStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;Lcom/android/camera/ui/videoswipehint/VideoSwipeStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;Ljavax/inject/Provider;)V

    .line 11
    return-object v0
.end method
