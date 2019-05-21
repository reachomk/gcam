.class final Lcom/android/camera/debug/Loggers$6;
.super Ljava/lang/Object;
.source "Loggers.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$hashcode:Ljava/lang/String;

.field private synthetic val$logger:Lcom/android/camera/debug/Logger;

.field private synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/debug/Loggers$6;->val$logger:Lcom/android/camera/debug/Logger;

    iput-object p2, p0, Lcom/android/camera/debug/Loggers$6;->val$hashcode:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/debug/Loggers$6;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$6;->val$logger:Lcom/android/camera/debug/Logger;

    iget-object v1, p0, Lcom/android/camera/debug/Loggers$6;->val$hashcode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/debug/Loggers$6;->val$msg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Future@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 279
    return-void
.end method
