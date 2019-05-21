.class final Lcom/android/camera/advice/dirtylens/DirtyLensSettings;
.super Ljava/lang/Object;
.source "DirtyLensSettings.java"

# interfaces
.implements Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;


# static fields
.field private static final TYPE:Lcom/google/android/apps/camera/advice/Advice$Type;


# instance fields
.field private final adviceActive$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final samplingFrequency$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final settings:Lcom/android/camera/settings/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/apps/camera/advice/Advice$Type;->PREVIEW:Lcom/google/android/apps/camera/advice/Advice$Type;

    sput-object v0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->TYPE:Lcom/google/android/apps/camera/advice/Advice$Type;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/settings/Settings;Lcom/android/camera/advice/dirtylens/DirtyLensConfig;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->settings:Lcom/android/camera/settings/Settings;

    .line 26
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->samplingFrequency$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 27
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->adviceActive$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 28
    return-void
.end method


# virtual methods
.method final disableDirtyLens()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->adviceActive$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->samplingFrequency$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public final getAdviceType()Lcom/google/android/apps/camera/advice/Advice$Type;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->TYPE:Lcom/google/android/apps/camera/advice/Advice$Type;

    return-object v0
.end method

.method final getProperty(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/advice/dirtylens/DirtyLensProperty;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    iget-object v1, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->settings:Lcom/android/camera/settings/Settings;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_dirty_lens_history_key"

    const-string v4, ""

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/Settings;->ofScopedString$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOQJ1EPGIUR31DPJIUKRKE9KMSPPR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/advice/dirtylens/DirtyLensProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 56
    return-object v0
.end method

.method public final getSamplingFrequency$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->samplingFrequency$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final isActive()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/DirtyLensSettings;->adviceActive$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method
