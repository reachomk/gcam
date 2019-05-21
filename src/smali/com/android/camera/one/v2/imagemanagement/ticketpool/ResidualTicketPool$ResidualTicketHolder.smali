.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;
.super Ljava/lang/Object;
.source "ResidualTicketPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResidualTicketHolder"
.end annotation


# virtual methods
.method public abstract flushTicket()Z
.end method

.method public abstract getFlushableTicketCount()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
