.class public final Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;
.super Ljava/lang/Object;
.source "RootUiControllerInitializer_Factory.java"

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
.field private final cameraAppStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraAppStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraAppStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private final imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final imageIntentStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentAppStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final videoIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoIntentAppStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoIntentAppStatechart;",
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
            "Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraAppStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/ImageIntentAppStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoIntentAppStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->cameraAppStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->cameraAppStatechartProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->videoIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->videoIntentAppStatechartProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->cameraModeProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 11
    .line 1056
    new-instance v0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->cameraAppStatechartInitializerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->cameraAppStatechartProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->imageIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->imageIntentStatechartProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->videoIntentAppStatechartInitializerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->videoIntentAppStatechartProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer_Factory;->cameraModeProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/util/CameraMode;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/controller/initializers/RootUiControllerInitializer;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/util/CameraMode;)V

    .line 11
    return-object v0
.end method
