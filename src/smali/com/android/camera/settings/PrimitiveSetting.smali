.class final Lcom/android/camera/settings/PrimitiveSetting;
.super Ljava/lang/Object;
.source "PrimitiveSetting.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/PrimitiveSetting$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Observable;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;

.field private final tClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v0, Ljava/lang/Integer;

    .line 64
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "T must be one of {Integer, Boolean, String}"

    .line 63
    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 67
    iput-object p2, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    .line 70
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/settings/PrimitiveSetting;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/settings/PrimitiveSetting;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/settings/PrimitiveSetting;->getNullable()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/settings/PrimitiveSetting;)Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method private final getNullable()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "T must be one of {Integer, Boolean, String}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/android/camera/settings/PrimitiveSetting$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/settings/PrimitiveSetting$Listener;-><init>(Lcom/android/camera/settings/PrimitiveSetting;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;B)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/PrimitiveSetting$Listener;->onSettingChanged$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D66KOBMC4NMOOBECSNL6T3ID5N6EEP9AO______(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/settings/PrimitiveSetting;->getNullable()Ljava/lang/Object;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Null value for setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-object v0
.end method

.method public final update(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->tClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting;->scope:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/settings/PrimitiveSetting;->key:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "T must be one of {Integer, Boolean, String}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
