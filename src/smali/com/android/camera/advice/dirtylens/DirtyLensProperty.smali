.class public final Lcom/android/camera/advice/dirtylens/DirtyLensProperty;
.super Lcom/google/android/apps/camera/async/TransformedProperty;
.source "DirtyLensProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedProperty",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final synthetic transformInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 2022
    invoke-static {p1}, Lcom/android/camera/advice/dirtylens/DirtyLensConfig;->decode(Ljava/lang/String;)Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected final synthetic transformOutput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    .line 1027
    invoke-static {p1}, Lcom/android/camera/advice/dirtylens/DirtyLensConfig;->encode(Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;)Ljava/lang/String;

    move-result-object v0

    .line 14
    return-object v0
.end method
