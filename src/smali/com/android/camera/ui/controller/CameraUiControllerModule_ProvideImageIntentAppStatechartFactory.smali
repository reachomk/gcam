.class public final Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;
.super Ljava/lang/Object;
.source "CameraUiControllerModule_ProvideImageIntentAppStatechartFactory.java"

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
.field private final cameraDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
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

.field private final module:Lcom/android/camera/ui/controller/CameraUiControllerModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraUiControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 27
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 32
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    .line 1036
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/ImageIntentStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideImageIntentAppStatechartFactory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    .line 1154
    new-instance v3, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/ui/controller/GeneratedImageIntentAppStatechart;-><init>(Lcom/android/camera/ui/controller/ImageIntentStatechart;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;)V

    .line 1037
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1036
    invoke-static {v3, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/ImageIntentAppStatechart;

    .line 8
    return-object v0
.end method
