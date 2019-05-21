.class final Lcom/google/android/libraries/smartburst/utils/Functions$7;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/utils/Functions;->getHandleValue()Lcom/google/android/libraries/smartburst/utils/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/handles/Handle",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    .line 1091
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handle;->get()Ljava/lang/Object;

    move-result-object v0

    .line 88
    return-object v0
.end method
