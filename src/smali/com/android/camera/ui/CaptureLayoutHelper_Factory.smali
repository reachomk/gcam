.class public final Lcom/android/camera/ui/CaptureLayoutHelper_Factory;
.super Ljava/lang/Object;
.source "CaptureLayoutHelper_Factory.java"

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
.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final activityWindowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

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

.field private final orientationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
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
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->activityWindowProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 46
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 13
    .line 1050
    new-instance v0, Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/OrientationLockController;

    iget-object v3, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->activityWindowProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Window;

    iget-object v4, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/ApiHelper;

    iget-object v5, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/activity/gca/GcaActivity;

    iget-object v6, p0, Lcom/android/camera/ui/CaptureLayoutHelper_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/debug/trace/Trace;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/CaptureLayoutHelper;-><init>(Landroid/content/res/Resources;Lcom/android/camera/burst/OrientationLockController;Landroid/view/Window;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/activity/gca/GcaActivity;Lcom/android/camera/debug/trace/Trace;)V

    .line 13
    return-object v0
.end method
