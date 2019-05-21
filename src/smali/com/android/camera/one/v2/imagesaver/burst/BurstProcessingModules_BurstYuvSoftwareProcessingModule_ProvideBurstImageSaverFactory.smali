.class public final Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;
.super Ljava/lang/Object;
.source "BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory.java"

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
.field private final imageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 12
    .line 1026
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvSoftwareProcessingModule_ProvideBurstImageSaverFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    .line 1027
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideBurstImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQJDTJ78TR1E9IKKS35CT4MQOB7CL9M2TJ5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5EDGNCPBI5T0N6UBECD9MIRJ7DHIKIRB1CTIL6OBMCLP3M___(Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 12
    return-object v0
.end method
