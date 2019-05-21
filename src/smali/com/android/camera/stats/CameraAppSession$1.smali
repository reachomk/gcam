.class final Lcom/android/camera/stats/CameraAppSession$1;
.super Ljava/lang/Object;
.source "CameraAppSession.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/CameraAppSession;->provider()Ljavax/inject/Provider;
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
        "Lcom/android/camera/stats/CameraAppSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/CameraAppSession;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/android/camera/stats/CameraAppSession;->instance()Lcom/android/camera/stats/CameraAppSession;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/camera/stats/CameraAppSession$1;->get()Lcom/android/camera/stats/CameraAppSession;

    move-result-object v0

    return-object v0
.end method
