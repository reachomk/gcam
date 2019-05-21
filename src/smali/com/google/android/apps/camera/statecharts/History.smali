.class public final Lcom/google/android/apps/camera/statecharts/History;
.super Ljava/lang/Object;
.source "History.java"


# static fields
.field private static final clearHistoryVisitor:Lcom/google/android/apps/camera/statecharts/StateVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/apps/camera/statecharts/StateVisitor;

    invoke-direct {v0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/statecharts/History;->clearHistoryVisitor:Lcom/google/android/apps/camera/statecharts/StateVisitor;

    return-void
.end method

.method public static clearHistory(Lcom/google/android/apps/camera/statecharts/State;)V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/apps/camera/statecharts/History;->clearHistoryVisitor:Lcom/google/android/apps/camera/statecharts/StateVisitor;

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/statecharts/State;->accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V

    .line 15
    return-void
.end method
