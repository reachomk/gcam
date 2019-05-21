.class public final Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;
.super Ljava/lang/Object;
.source "CameraUiModule_InflateCameraActivityUiFactory.java"

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
.field private final metricBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/ui/views/CameraUiModule;

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
.method public constructor <init>(Lcom/android/camera/ui/views/CameraUiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/views/CameraUiModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;->module:Lcom/android/camera/ui/views/CameraUiModule;

    .line 26
    iput-object p2, p0, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;->traceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;->metricBuilderProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 10
    .line 1033
    iget-object v2, p0, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;->module:Lcom/android/camera/ui/views/CameraUiModule;

    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;->traceProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/Trace;

    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiModule_InflateCameraActivityUiFactory;->metricBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/performance/MetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/views/CameraUiModule;->inflateCameraActivityUi(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;)Lcom/android/camera/ui/views/CameraActivityUi;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    .line 10
    return-object v0
.end method
