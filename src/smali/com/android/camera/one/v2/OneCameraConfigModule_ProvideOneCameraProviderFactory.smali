.class public final Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraProviderFactory;
.super Ljava/lang/Object;
.source "OneCameraConfigModule_ProvideOneCameraProviderFactory.java"

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
.field private final cameraAppComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFactoryProvider;",
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
            "Lcom/android/camera/one/v2/OneCameraFactoryProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraProviderFactory;->cameraAppComponentProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1022
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraConfigModule_ProvideOneCameraProviderFactory;->cameraAppComponentProvider:Ljavax/inject/Provider;

    .line 1023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideOneCameraProvider$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50N0S23DTMN0RRECLN78EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC5362ORKDTP7IK3IDTR6IP35E8TG____(Lcom/android/camera/one/v2/OneCameraFactoryProvider;)Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    .line 9
    return-object v0
.end method
