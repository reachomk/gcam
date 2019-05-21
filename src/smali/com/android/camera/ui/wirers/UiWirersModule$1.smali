.class final Lcom/android/camera/ui/wirers/UiWirersModule$1;
.super Ljava/lang/Object;
.source "UiWirersModule.java"

# interfaces
.implements Lcom/android/camera/ui/wirers/UiWirer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/UiWirersModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$wirers:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/wirers/UiWirersModule$1;->val$wirers:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wire()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/wirers/UiWirersModule$1;->val$wirers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/wirers/UiWirer;

    .line 48
    invoke-interface {v0}, Lcom/android/camera/ui/wirers/UiWirer;->wire()V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
