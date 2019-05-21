.class public final Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;
.super Ljava/lang/Object;
.source "OneCameraSettingsModule_ProvideFlashSettingFactory.java"

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

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1034
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC59MAT3KD5N6ESQDDTI7AR357C______:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/Settings;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraSettingsModule_ProvideFlashSettingFactory;->characteristicsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->provideFlashSetting(Lcom/android/camera/settings/Settings;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1034
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 11
    return-object v0
.end method
