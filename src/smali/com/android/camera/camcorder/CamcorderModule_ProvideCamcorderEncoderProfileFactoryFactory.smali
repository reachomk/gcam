.class public final Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderEncoderProfileFactoryFactory;
.super Ljava/lang/Object;
.source "CamcorderModule_ProvideCamcorderEncoderProfileFactoryFactory.java"

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
.field private final camcorderEncoderProfileFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderEncoderProfileFactoryFactory;->camcorderEncoderProfileFactoryImplProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1022
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderModule_ProvideCamcorderEncoderProfileFactoryFactory;->camcorderEncoderProfileFactoryImplProvider:Ljavax/inject/Provider;

    .line 1024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;

    .line 1023
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideCamcorderEncoderProfileFactory(Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;)Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 8
    return-object v0
.end method
