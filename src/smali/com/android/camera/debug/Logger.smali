.class public Lcom/android/camera/debug/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/Logger$Factory;
    }
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2135
    iput-object p1, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    .line 2136
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1146
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1156
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/camera/debug/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1186
    return-void
.end method
