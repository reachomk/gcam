.class public final Lcom/android/camera/module/ImageConfigSelector_Factory;
.super Ljava/lang/Object;
.source "ImageConfigSelector_Factory.java"

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
.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final resolutionSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/ResolutionSetting;",
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

.field private final viewfinderSizeSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
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
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/ResolutionSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->resolutionSettingProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1044
    new-instance v0, Lcom/android/camera/module/ImageConfigSelector;

    iget-object v1, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraManager;

    iget-object v2, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->resolutionSettingProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/settings/ResolutionSetting;

    iget-object v3, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->viewfinderSizeSelectorProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    iget-object v4, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/debug/Logger$Factory;

    iget-object v5, p0, Lcom/android/camera/module/ImageConfigSelector_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/ImageConfigSelector;-><init>(Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;)V

    .line 12
    return-object v0
.end method
