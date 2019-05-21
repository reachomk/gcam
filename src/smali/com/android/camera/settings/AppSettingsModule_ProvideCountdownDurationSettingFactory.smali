.class public final Lcom/android/camera/settings/AppSettingsModule_ProvideCountdownDurationSettingFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvideCountdownDurationSettingFactory.java"

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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideCountdownDurationSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 1022
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideCountdownDurationSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 1023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/Settings;

    .line 1095
    const-string v1, "pref_camera_countdown_duration_key"

    .line 2030
    const-string v2, "default_scope"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/camera/settings/Settings;->ofScopedInteger$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTKIAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 1023
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 9
    return-object v0
.end method
