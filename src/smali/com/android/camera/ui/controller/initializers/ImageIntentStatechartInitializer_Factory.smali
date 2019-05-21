.class public final Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "ImageIntentStatechartInitializer_Factory.java"

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

.field private final imageIntentStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final windowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->windowProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 12
    .line 1040
    new-instance v3, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/ImageIntentStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer_Factory;->windowProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Window;

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;Ldagger/Lazy;Landroid/view/Window;)V

    .line 12
    return-object v3
.end method
