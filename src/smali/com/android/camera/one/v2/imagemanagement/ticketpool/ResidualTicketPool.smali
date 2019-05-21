.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;
.super Ljava/lang/Object;
.source "ResidualTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;
    }
.end annotation


# virtual methods
.method public abstract addResidualTicketHolder(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end method
