.class public final Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;
.super Ljava/lang/Object;
.source "OrientationModule_ProvideOrientationManagerFactory.java"

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
.field private final lifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
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

.field private final orientationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/layout/OrientationManagerImpl;",
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
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/layout/OrientationManagerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;->lifecycleProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;->orientationManagerProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 10
    .line 1033
    iget-object v0, p0, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;->lifecycleProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/util/layout/OrientationModule_ProvideOrientationManagerFactory;->orientationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/layout/OrientationManagerImpl;

    .line 1034
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideOrientationManager$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T6M2QBEAHK74PB1CGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UR31F5NNAT1F9TP6IPBEEHGN8QBFDP6M2RJ1CTIN4EO_(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/layout/OrientationManagerImpl;)Lcom/android/camera/burst/OrientationLockController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1033
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/OrientationLockController;

    .line 10
    return-object v0
.end method
