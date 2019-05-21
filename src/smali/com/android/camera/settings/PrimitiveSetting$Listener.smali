.class final Lcom/android/camera/settings/PrimitiveSetting$Listener;
.super Ljava/lang/Object;
.source "PrimitiveSetting.java"

# interfaces
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/PrimitiveSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private synthetic this$0:Lcom/android/camera/settings/PrimitiveSetting;


# direct methods
.method private constructor <init>(Lcom/android/camera/settings/PrimitiveSetting;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->this$0:Lcom/android/camera/settings/PrimitiveSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->callback:Lcom/google/android/apps/camera/async/Updatable;

    .line 27
    iput-object p3, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->executor:Ljava/util/concurrent/Executor;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/settings/PrimitiveSetting;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/settings/PrimitiveSetting$Listener;-><init>(Lcom/android/camera/settings/PrimitiveSetting;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/settings/PrimitiveSetting$Listener;)Lcom/google/android/apps/camera/async/Updatable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->callback:Lcom/google/android/apps/camera/async/Updatable;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->this$0:Lcom/android/camera/settings/PrimitiveSetting;

    invoke-static {v0}, Lcom/android/camera/settings/PrimitiveSetting;->access$300(Lcom/android/camera/settings/PrimitiveSetting;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 54
    return-void
.end method

.method public final onSettingChanged$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6JB1DPGMEPBI7D66KOBMC4NMOOBECSNL6T3ID5N6EEP9AO______(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->this$0:Lcom/android/camera/settings/PrimitiveSetting;

    invoke-static {v0}, Lcom/android/camera/settings/PrimitiveSetting;->access$000(Lcom/android/camera/settings/PrimitiveSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->this$0:Lcom/android/camera/settings/PrimitiveSetting;

    invoke-static {v0}, Lcom/android/camera/settings/PrimitiveSetting;->access$100(Lcom/android/camera/settings/PrimitiveSetting;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/camera/settings/PrimitiveSetting$Listener;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/settings/PrimitiveSetting$Listener$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/settings/PrimitiveSetting$Listener$1;-><init>(Lcom/android/camera/settings/PrimitiveSetting$Listener;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
