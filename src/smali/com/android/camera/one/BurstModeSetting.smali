.class public final Lcom/android/camera/one/BurstModeSetting;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "BurstModeSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
        ">;"
    }
.end annotation


# instance fields
.field private final hybridBurstSupported:Z


# direct methods
.method public constructor <init>(ZLcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/one/BurstModeSetting;->hybridBurstSupported:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/one/BurstModeSetting;->hybridBurstSupported:Z

    if-eqz v0, :cond_0

    .line 1027
    sget-object v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;->HYBRID_BURST:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    .line 1028
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;->SMART_BURST:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;->FIXED_FPS:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    goto :goto_0
.end method
