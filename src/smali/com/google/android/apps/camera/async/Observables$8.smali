.class final Lcom/google/android/apps/camera/async/Observables$8;
.super Ljava/lang/Object;
.source "Observables.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Observables;->equal(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$value:Ljava/lang/Comparable;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Observables$8;->val$value:Ljava/lang/Comparable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Comparable;

    .line 1197
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Observables$8;->val$value:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 194
    return-object v0

    .line 1198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
