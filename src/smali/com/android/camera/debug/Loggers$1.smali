.class Lcom/android/camera/debug/Loggers$1;
.super Ljava/lang/Object;
.source "Loggers.java"

# interfaces
.implements Lcom/android/camera/debug/Logger$Factory;
.implements Lcom/android/camera/debug/Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/debug/Logger$Factory;",
        "Lcom/android/camera/debug/Writer;"
    }
.end annotation


# instance fields
.field private synthetic val$logger:Lcom/android/camera/debug/Logger;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/camera/debug/Loggers$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$1;->val$logger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$1;->val$tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    return-void
.end method
