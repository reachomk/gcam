.class public final Lcom/android/ex/camera2/portability/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/debug/Log$Tag;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/debug/Log;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/ex/camera2/portability/debug/Log;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method public static d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method public static e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_0
    return-void
.end method

.method public static i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void
.end method

.method private static isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 127
    :try_start_0
    const-string v1, "CAM2PORT_"

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 132
    :cond_1
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/ex/camera2/portability/debug/Log;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tag too long:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method public static w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method public static w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :cond_0
    return-void
.end method
