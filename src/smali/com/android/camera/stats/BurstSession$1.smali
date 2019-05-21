.class final Lcom/android/camera/stats/BurstSession$1;
.super Ljava/lang/Object;
.source "BurstSession.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/BurstSession;->provider()Ljavax/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/android/camera/stats/BurstSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/BurstSession;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/stats/BurstSession;

    new-instance v1, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v1}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-static {}, Lcom/android/camera/stats/BurstSession;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/stats/BurstSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/camera/stats/BurstSession$1;->get()Lcom/android/camera/stats/BurstSession;

    move-result-object v0

    return-object v0
.end method
