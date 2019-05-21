.class final Lcom/android/camera/stats/CameraChangeSession$1;
.super Ljava/lang/Object;
.source "CameraChangeSession.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/CameraChangeSession;->provider()Ljavax/inject/Provider;
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
        "Lcom/android/camera/stats/CameraChangeSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/CameraChangeSession;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/stats/CameraChangeSession;

    new-instance v1, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v1}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/stats/CameraChangeSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Lcom/android/camera/stats/CameraChangeSession$1;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/camera/stats/CameraChangeSession$1;->get()Lcom/android/camera/stats/CameraChangeSession;

    move-result-object v0

    return-object v0
.end method
