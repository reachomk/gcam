.class public final Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;
.super Ljava/lang/Object;
.source "EvCompUiWirer_Factory.java"

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
.field private final activityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompScrollingPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final evCompViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->evCompScrollingPropertyProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 14
    .line 1056
    new-instance v0, Lcom/android/camera/ui/wirers/EvCompUiWirer;

    iget-object v1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    iget-object v2, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    iget-object v4, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->evCompScrollingPropertyProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/Observable;

    iget-object v5, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->activityLifetimeProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/lifetime/ActivityLifetime;

    iget-object v6, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/wirers/EvCompUiWirer;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompViewController;Ljavax/inject/Provider;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/util/lifetime/ActivityLifetime;Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;)V

    .line 14
    return-object v0
.end method
