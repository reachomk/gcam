.class final Lcom/android/camera/settings/SettingsManager$1;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/settings/SettingsManager;

.field private synthetic val$listener:Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/settings/SettingsManager$1;->this$0:Lcom/android/camera/settings/SettingsManager;

    iput-object p2, p0, Lcom/android/camera/settings/SettingsManager$1;->val$listener:Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/settings/SettingsManager$1;->val$listener:Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;

    invoke-interface {v0, p2}, Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;->onSettingChanged$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D66KOBMC4NMOOBECSNL6T3ID5N6EEP9AO______(Ljava/lang/String;)V

    .line 177
    return-void
.end method
