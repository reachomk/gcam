.class public final Lcom/android/camera/util/ProcessingOutputStream;
.super Ljava/io/OutputStream;
.source "ProcessingOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/ProcessingOutputStream$StateMachine;
    }
.end annotation


# instance fields
.field private final stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/ProcessingOutputStream$StateMachine;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/util/ProcessingOutputStream;->stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;

    .line 25
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream;->stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;

    invoke-virtual {v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->closeStream()V

    .line 50
    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream;->stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;

    invoke-virtual {v0}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->flushStream()V

    .line 45
    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream;->stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->push(I)V

    .line 30
    return-void
.end method

.method public final write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream;->stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;

    .line 1191
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->push([BII)V

    .line 35
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/util/ProcessingOutputStream;->stateMachine:Lcom/android/camera/util/ProcessingOutputStream$StateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine;->push([BII)V

    .line 40
    return-void
.end method
