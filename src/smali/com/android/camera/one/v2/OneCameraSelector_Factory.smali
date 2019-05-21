.class public final Lcom/android/camera/one/v2/OneCameraSelector_Factory;
.super Ljava/lang/Object;
.source "OneCameraSelector_Factory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCamerasProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFactoryProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final toasterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Toaster;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFactoryProvider;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraDebugHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Toaster;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->oneCamerasProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->oneCameraDebugHelperProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->toasterProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 44
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 11
    .line 1048
    new-instance v0, Lcom/android/camera/one/v2/OneCameraSelector;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->oneCamerasProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->oneCameraDebugHelperProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/OneCameraDebugHelper;

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/ApiHelper;

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->toasterProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/debug/Toaster;

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraSelector_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/OneCameraSelector;-><init>(Lcom/android/camera/one/v2/OneCameraFactoryProvider;Lcom/android/camera/one/v2/OneCameraDebugHelper;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/debug/Toaster;Lcom/android/camera/debug/trace/Trace;)V

    .line 11
    return-object v0
.end method
