.class public final Lcom/android/camera/settings/AppSettingsModule_ProvideGridLinesModeSettingFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvideGridLinesModeSettingFactory.java"

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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideGridLinesModeSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 1021
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideGridLinesModeSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/Settings;

    .line 1195
    const-string v1, "default_scope"

    const-string v2, "pref_camera_grid_lines_mode"

    sget-object v3, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->OFF:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;

    .line 1198
    invoke-virtual {v3}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->getIndex()I

    move-result v3

    .line 1195
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/Settings;->ofScopedInteger$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTKIAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 1022
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 9
    return-object v0
.end method
