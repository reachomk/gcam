.class public interface abstract Lcom/android/camera/fsm/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/android/camera/fsm/State",
            "<TC;>;"
        }
    .end annotation
.end method
