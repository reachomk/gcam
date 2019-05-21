.class public final Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvidePerLaunchPropertyResetterFactory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final whiteBalanceSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
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
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1034
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/WhiteBalanceSetting;

    iget-object v1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/HdrPlusSetting;

    iget-object v2, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePerLaunchPropertyResetterFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/ApiHelper;

    .line 1214
    new-instance v3, Lcom/google/android/apps/camera/async/PropertyResetter;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/PropertyResetter;-><init>()V

    .line 1215
    sget-object v4, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/apps/camera/async/PropertyResetter;->addProperty$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ3AC5R62BRCC5N6EBQFC9L6AORK7CKLC___(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/apps/camera/async/PropertyResetter;->addProperty$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ3AC5R62BRCC5N6EBQFC9L6AORK7CKLC___(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Object;)V

    .line 1035
    :cond_1
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1034
    invoke-static {v3, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/PropertyResetter;

    .line 11
    return-object v0
.end method
