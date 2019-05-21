.class public final Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;
.super Ljava/lang/Object;
.source "CamcorderCharacteristicsFactory_Factory.java"

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
.field private final camcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final camcorderProfileFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/CamcorderProfileFactory;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/media/CamcorderProfileFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;->camcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;->camcorderProfileFactoryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 1032
    new-instance v3, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;->camcorderEncoderProfileFactoryProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;->camcorderProfileFactoryProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory_Factory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraManager;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;-><init>(Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;Lcom/android/camera/camcorder/media/CamcorderProfileFactory;Lcom/android/camera/one/OneCameraManager;)V

    .line 9
    return-object v3
.end method
