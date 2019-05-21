.class public final Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFaceDetectModeFactory;
.super Ljava/lang/Object;
.source "OneCameraSettingsModule_ProvideFaceDetectModeFactory.java"

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
.field private final characteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFaceDetectModeFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    .line 22
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFaceDetectModeFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1027
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFaceDetectModeFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->provideFaceDetectMode(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1027
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 10
    return-object v0
.end method
