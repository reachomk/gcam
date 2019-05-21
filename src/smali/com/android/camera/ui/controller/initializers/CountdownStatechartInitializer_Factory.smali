.class public final Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "CountdownStatechartInitializer_Factory.java"

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

.field private final countdownStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
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

.field private final isCountingDownProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
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
            "Lcom/android/camera/ui/controller/CountdownStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->countdownStatechartProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->isCountingDownProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1039
    new-instance v3, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->countdownStatechartProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CountdownStatechart;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->isCountingDownProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Observable;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/CountdownStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 11
    return-object v3
.end method
