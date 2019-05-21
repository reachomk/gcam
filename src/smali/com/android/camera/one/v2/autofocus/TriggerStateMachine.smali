.class final Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;
.super Ljava/lang/Object;
.source "TriggerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;
    }
.end annotation


# instance fields
.field private currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

.field private final doneStates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final finishAfterNFrames:I

.field private lastFinishFrameNumber:Ljava/lang/Long;

.field private lastTriggerFrameNumber:Ljava/lang/Long;

.field private final triggerStart:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->triggerStart:Ljava/lang/Integer;

    .line 64
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->doneStates:Ljava/util/Set;

    .line 65
    iput p3, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->finishAfterNFrames:I

    .line 66
    sget v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    .line 67
    iput-object v1, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    .line 68
    iput-object v1, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastFinishFrameNumber:Ljava/lang/Long;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    const/16 v1, 0x3c

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;-><init>(Ljava/lang/Integer;Ljava/util/Set;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public final update(JLjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->triggerStart:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->triggerStart:Ljava/lang/Integer;

    .line 76
    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    .line 78
    :goto_0
    iget v3, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    sget v4, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    if-ne v3, v4, :cond_2

    .line 79
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    .line 80
    :cond_1
    if-eqz v0, :cond_2

    .line 81
    sget v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->TRIGGERED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    .line 87
    :cond_2
    iget v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    sget v3, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->TRIGGERED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    if-ne v0, v3, :cond_6

    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastFinishFrameNumber:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastFinishFrameNumber:Ljava/lang/Long;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-lez v0, :cond_6

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->doneStates:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->finishAfterNFrames:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastTriggerFrameNumber:Ljava/lang/Long;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p1, v4

    iget v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->finishAfterNFrames:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 94
    :cond_4
    sget v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine$State;->WAITING_FOR_TRIGGER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->currentState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNL8SJ9CTJMASIJEHGN8PADC5HMGQBECKI56T31EHIJM___:I

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->lastFinishFrameNumber:Ljava/lang/Long;

    .line 101
    :goto_1
    return v2

    :cond_5
    move v0, v1

    .line 76
    goto :goto_0

    :cond_6
    move v2, v1

    .line 101
    goto :goto_1
.end method
