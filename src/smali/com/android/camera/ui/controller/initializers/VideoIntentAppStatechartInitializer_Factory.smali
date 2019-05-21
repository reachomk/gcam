.class public final Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "VideoIntentAppStatechartInitializer_Factory.java"

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
.field private final videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoIntentStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;->videoTorchStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;->videoIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 7
    .line 1031
    new-instance v3, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer;

    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;->videoTorchStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer_Factory;->videoIntentStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/ui/controller/initializers/VideoIntentAppStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoIntentStatechartInitializer;)V

    .line 7
    return-object v3
.end method
