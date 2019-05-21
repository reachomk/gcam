.class public final Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;
.super Ljava/lang/Object;
.source "PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory.java"

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
.field private final captureLayoutHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNL0SJ5EPKMATQKE9GMSSR6DTP6QGR1DHHNAR31EHNN4JBFCHQMOP9R:Lcom/android/camera/ui/wirers/UiWirersModule;

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


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/wirers/UiWirersModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/wirers/UiWirersModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/OrientationLockController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/CaptureLayoutHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDLNM8TBCCKNL0SJ5EPKMATQKE9GMSSR6DTP6QGR1DHHNAR31EHNN4JBFCHQMOP9R:Lcom/android/camera/ui/wirers/UiWirersModule;

    .line 26
    iput-object p2, p0, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1033
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/OrientationLockController;

    iget-object v1, p0, Lcom/android/camera/module/PreviewTransformCalculatorModule_ProvidePreviewTransformCalculatorFactory;->captureLayoutHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 1034
    invoke-static {v0, v1}, Lcom/android/camera/ui/wirers/UiWirersModule;->providePreviewTransformCalculator$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TM62UBFELQ2UJRID5IMST31EHKMURIDC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IKOOBPDTQN8I35DHO6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUK3ICLR6IPBNAHP62RJJCPNN4RA3C5M66TBCC5Q6USHR(Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/ui/CaptureLayoutHelper;)Lcom/android/camera/module/PreviewTransformCalculator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/PreviewTransformCalculator;

    .line 10
    return-object v0
.end method
