.class public final Lcom/android/camera/settings/AppSettingsModule_ProvideVideo60fpsSettingFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvideVideo60fpsSettingFactory.java"

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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideVideo60fpsSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    .line 1020
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideVideo60fpsSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 1021
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/Settings;

    .line 1182
    new-instance v1, Lcom/android/camera/settings/Video60FpsSetting;

    const-string v2, "pref_video_60fps_key"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/Settings;->ofBoolean$5166KOBMC4NMOOBECSNL6T3ID5N6EEQQ55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Ljava/lang/String;Z)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/camera/settings/Video60FpsSetting;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 1021
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v1, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/Video60FpsSetting;

    .line 8
    return-object v0
.end method
