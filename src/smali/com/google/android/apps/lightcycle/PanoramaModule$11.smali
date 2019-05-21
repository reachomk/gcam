.class final Lcom/google/android/apps/lightcycle/PanoramaModule$11;
.super Lcom/android/camera/settings/SettingsUpgrader;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/SettingsUpgrader;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final upgrade$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D4KIAAM(Lcom/android/camera/settings/SettingsManager;I)V
    .locals 3

    .prologue
    .line 614
    if-gtz p2, :cond_0

    .line 615
    invoke-virtual {p1}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photosphere_show_help_overlay"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/android/camera/settings/SettingsManager;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photosphere_show_help_overlay"

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule$11;->removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 618
    const-string v1, "default_scope"

    const-string v2, "photosphere_show_help_overlay"

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 621
    :cond_0
    return-void
.end method
